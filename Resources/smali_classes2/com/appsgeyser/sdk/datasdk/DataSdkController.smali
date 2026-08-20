.class public Lcom/appsgeyser/sdk/datasdk/DataSdkController;
.super Ljava/lang/Object;
.source "DataSdkController.java"


# static fields
.field private static final ACCEPTED_SDK_KEY:Ljava/lang/String; = "sdkIsAccepted"

.field private static final COUNT_OF_TRY_KEY:Ljava/lang/String; = "countOfTry"

.field private static final INCORRECT_VALUE:I = -0x1

.field public static final PREFS_ELAPSED_TIME:Ljava/lang/String; = "elapsedTime"

.field private static final SERVER_ERROR_LOG:Ljava/lang/String; = "dataSDKServerErr"

.field static final START_LOG:Ljava/lang/String; = "startDataSDK"

.field private static final TWO_HOURS_IN_MILLIS:J = 0x6ddd00L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acceptAllActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .locals 0

    .line 107
    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->acceptSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    .line 108
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p0

    const-string p1, "click_accept_sdk_dialog"

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    return-void
.end method

.method private static acceptSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .locals 2

    .line 202
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 203
    const-string p0, "sdkIsAccepted"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    .line 205
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserSdk()Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 206
    const-string p0, "appsgeyserSdk_eulaAccepted"

    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->declineActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    return-void
.end method

.method private static checkPermissions(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V
    .locals 2

    .line 191
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->isPermissionsRequired(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    invoke-static {p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->isSdkAccepted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    goto :goto_1

    .line 193
    :cond_1
    :goto_0
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setConsentRequestProcessActive(Z)V

    .line 194
    invoke-static {p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->startRequestPermissions(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static declineActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .locals 2

    const/4 p0, -0x1

    .line 158
    const-string v0, "countOfTry"

    invoke-virtual {p2, v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefInt(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 161
    invoke-virtual {p2, v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefInt(Ljava/lang/String;I)V

    .line 162
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    const-string v1, "click_decline_sdk_dialog"

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserSdk()Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 167
    const-string p0, "appsgeyserSdk_eulaAccepted"

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static declineAllActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    .locals 3

    .line 112
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getStartupELUAConfirmationDialogAllow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    check-cast p2, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    .line 115
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_are_you_sure_decline_sdk:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 118
    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_close_app:I

    new-instance v2, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;

    invoke-direct {v2, p2, p0, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;-><init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 134
    sget p0, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_back:I

    new-instance v1, Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;

    invoke-direct {v1, p2, p3, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;-><init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Ljava/lang/String;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 145
    :cond_0
    new-instance p3, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {p3, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-static {p0, p1, p3}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->declineActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    .line 147
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->isPermissionsRequired(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 148
    check-cast p0, Landroid/app/Activity;

    const/16 p2, 0x4e

    invoke-static {p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->requestAllActiveByDefaultPermissions(Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;I)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    .line 152
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method private static initDataSdkReceiver(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method static initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V
    .locals 0

    .line 173
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 174
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->consentRequestProcessFinished()V

    .line 176
    :cond_0
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setConsentRequestProcessActive(Z)V

    return-void
.end method

.method static isSdkAccepted(Landroid/content/Context;)Z
    .locals 2

    .line 183
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 184
    const-string p0, "sdkIsAccepted"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static onGetConfigErrorResponse(Landroid/content/Context;)V
    .locals 2

    .line 95
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 97
    const-string p0, "appsgeyserSdk_isActive"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefBoolean(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static revokeDataCollectionConsent(Landroid/content/Context;)V
    .locals 2

    .line 102
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 103
    const-string p0, "appsgeyserSdk_eulaAccepted"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static startDataSdkController(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .locals 12

    .line 48
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 49
    const-string v1, "countOfTry"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefInt(Ljava/lang/String;I)I

    move-result v3

    .line 50
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getCountOfTry()I

    move-result v4

    if-ne v2, v3, :cond_0

    .line 53
    invoke-virtual {v0, v1, v4}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefInt(Ljava/lang/String;I)V

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserSdk()Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActive()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 60
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActiveByDefault()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "appsgeyserSdk_eulaAccepted"

    invoke-virtual {v0, v4, v5}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v5, 0x1

    .line 58
    :cond_2
    const-string v4, "appsgeyserSdk_isActive"

    invoke-virtual {v0, v4, v5}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefInt(Ljava/lang/String;I)I

    move-result v1

    .line 64
    const-string v2, "elapsedTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v6

    if-lez v1, :cond_7

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    const-wide/32 v4, 0x6ddd00

    cmp-long v1, v10, v4

    if-lez v1, :cond_7

    .line 71
    :cond_3
    invoke-static {p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->isSdkAccepted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 73
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->getTextOfPolicy()Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActive()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActiveByDefault()Z

    move-result v3

    if-nez v3, :cond_5

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 79
    const-string v3, "\n\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->checkPermissions(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 85
    invoke-static {p0, p1, v1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->checkPermissions(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_7
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    .line 91
    :goto_0
    invoke-virtual {v0, v2, v8, v9}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    return-void
.end method
