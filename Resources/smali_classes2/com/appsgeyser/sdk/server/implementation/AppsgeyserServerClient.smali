.class public Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;
.super Ljava/lang/Object;
.source "AppsgeyserServerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;,
        Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$SingletonHolder;
    }
.end annotation


# static fields
.field private static final INSTALL_ACTION_URL_TAG:Ljava/lang/String; = "install"

.field private static final UPDATE_ACTION_URL_TAG:Ljava/lang/String; = "update"

.field private static final USAGE_ACTION_URL_TAG:Ljava/lang/String; = "usage"


# instance fields
.field private configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    .line 64
    invoke-static {}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getInstance()Lcom/appsgeyser/sdk/server/network/NetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    return-object p0
.end method

.method static synthetic access$102(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->initPush(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->onGetConfigErrorResponse(Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    return-void
.end method

.method private getBaseConfigUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 433
    const-string p1, "https://config.appsgeyser.com/"

    return-object p1
.end method

.method private getInstallerMarket(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 77
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_0
    const-string p1, "ERROR"

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;
    .locals 1

    .line 68
    sget-object v0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$SingletonHolder;->HOLDER_INSTANCE:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    return-object v0
.end method

.method private initPush(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/appsgeyser/sdk/push/OneSignalCreator;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private onGetConfigErrorResponse(Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .locals 2

    .line 396
    const-string v0, "ServerResponse"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 397
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :try_start_0
    invoke-static {p3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p3

    iput-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 400
    invoke-interface {p2, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;->receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 402
    const-string p3, "JsonParseException"

    invoke-virtual {p2}, Lcom/google/gson/JsonParseException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->onGetConfigErrorResponse(Landroid/content/Context;)V

    return-void
.end method

.method private sendRequestSdkStatisticsWithArgs(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6

    .line 380
    invoke-static {p3}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/appsgeyser/sdk/R$string;->statDomainUrl:I

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sdk_statistics.php?action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "&wdid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 383
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "&guid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 384
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "&v=2.48.s&p=android"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 385
    invoke-static {p3}, Lcom/appsgeyser/sdk/utils/DeviceInfoGetter;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "&templateversion="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 386
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 389
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 391
    invoke-virtual {p1, p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v4

    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 392
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v5

    move-object v3, p3

    .line 388
    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private sendRequestWithAllArgs(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 12

    .line 261
    const-string v0, ""

    invoke-static {p3}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v1

    .line 264
    invoke-static {}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getInstance()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getDeviceIdParameters()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getAdvId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 268
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 269
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v4, v0

    .line 275
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 276
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 275
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    :catch_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "&appversioncode="

    const-string v6, "&appversionname="

    const-string v7, "&templateversion="

    const-string v8, "&id="

    const-string v9, "&name="

    const-string v10, "statistics.php?action="

    if-nez v3, :cond_0

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/appsgeyser/sdk/R$string;->statDomainUrl:I

    invoke-virtual {p3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 283
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 284
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "&v=2.48.s&p=android&advid="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "&market="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 285
    invoke-direct {p0, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstallerMarket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 286
    invoke-static {p3}, Lcom/appsgeyser/sdk/utils/DeviceInfoGetter;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 287
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 291
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/appsgeyser/sdk/R$string;->statDomainUrl:I

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 292
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 293
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "&v=2.48.s&p=android&market="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 294
    invoke-direct {p0, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstallerMarket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 295
    invoke-static {p3}, Lcom/appsgeyser/sdk/utils/DeviceInfoGetter;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 296
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v1, p1

    .line 301
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 302
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 304
    invoke-virtual {p1, p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v4

    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 305
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v5

    move-object v3, p3

    .line 301
    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {p3, v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;->receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    goto/16 :goto_3

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 129
    :cond_1
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const-string p3, ""

    if-eqz p2, :cond_2

    .line 133
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getAdvId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, p3

    .line 137
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&advid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, p3

    .line 141
    :goto_1
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->loadConfiguration()V

    const/4 v1, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v2, p3

    .line 152
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 152
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getBaseConfigUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?widgetId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&guid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&v=2.48.s&market="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstallerMarket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&cadmobid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/appsgeyser/sdk/R$string;->customAdmobAppID:I

    .line 164
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&templateVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&appVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&appVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    new-instance p2, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {p2, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 171
    const-string p3, "ConfigPhpURLWithParams"

    invoke-virtual {p2, p3, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object p3, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->CONFIG_PHP:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 174
    invoke-virtual {p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;-><init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;Landroid/content/Context;)V

    new-instance v5, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;

    invoke-direct {v5, p0, p1, p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;-><init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    move-object v3, p1

    .line 173
    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_3
    return-void
.end method

.method public sendAboutDialogImpression(Landroid/content/Context;)V
    .locals 2

    .line 97
    const-string v0, "about_dialog_impression"

    const v1, 0x3ad8712e

    invoke-direct {p0, v0, v1, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRequestSdkStatisticsWithArgs(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public sendAboutDialogVisitSite(Landroid/content/Context;)V
    .locals 2

    .line 101
    const-string v0, "about_dialog_visit_site"

    const v1, -0x3a743f20

    invoke-direct {p0, v0, v1, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRequestSdkStatisticsWithArgs(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public sendAfterInstallInfo(Landroid/content/Context;)V
    .locals 2

    .line 89
    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->AFTERINSTALL:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v0

    const-string v1, "install"

    invoke-direct {p0, v1, v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRequestWithAllArgs(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public sendApplicationMode(Landroid/content/Context;)V
    .locals 7

    .line 247
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://ads.appsgeyser.com/checkstatus.php?wid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->APPMODE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 252
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 254
    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v5

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v4, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->APPMODE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 255
    invoke-virtual {v4}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    move-object v4, p1

    .line 251
    invoke-virtual/range {v1 .. v6}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public sendClickInfo(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v1, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->CLICK:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 232
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 234
    invoke-virtual {v1, p2}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v4

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v3, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->CLICK:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 235
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public sendImpression(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .line 239
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v1, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->IMPRESSION:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 240
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 242
    invoke-virtual {v1, p2}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v4

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v3, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->IMPRESSION:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 243
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    .line 239
    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public sendRMARequest(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v1, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->RMA:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 313
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 315
    invoke-virtual {v1, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v4

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v3, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->RMA:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 316
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v5

    .line 312
    const-string v1, "https://analytics.appsgeyser.com/hypo/rma_dialog_feedback.php?action=add"

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsyncPost(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    return-void
.end method

.method public sendReferrerStatsRequest(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;Lcom/android/installreferrer/api/ReferrerDetails;)V
    .locals 10

    .line 322
    const-string v0, ""

    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    .line 325
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v0

    .line 332
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 332
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "https://stat.appsgeyser.com/referrer.php"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    sget-object v4, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;->$SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus:[I

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    const-string v4, "?action=add&status=remote_exception"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 348
    :cond_1
    const-string v4, "?action=add&status=unavailable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :cond_2
    const-string v4, "?action=add&status=feature_not_supported"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 342
    :cond_3
    const-string v4, "?action=add&status=ok"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :goto_1
    const-string v4, "&wid="

    .line 355
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&templateversion="

    .line 356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&appversionname="

    .line 357
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&appversioncode="

    .line 358
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 362
    sget-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->OK:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 363
    const-string p2, "referrerUrl"

    invoke-virtual {p3}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {p3}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "referrerClickTime"

    invoke-interface {v9, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {p3}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appInstallTime"

    invoke-interface {v9, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-virtual {p3}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "instantExperienceLaunched"

    invoke-interface {v9, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_4
    iget-object v3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object p2, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->REFERRER:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 370
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 372
    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v7

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object p3, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->REFERRER:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 373
    invoke-virtual {p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v8

    move-object v6, p1

    .line 369
    invoke-virtual/range {v3 .. v9}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsyncPost(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    return-void
.end method

.method public sendUpdateInfo(Landroid/content/Context;)V
    .locals 3

    .line 105
    invoke-static {p1}, Lcom/appsgeyser/sdk/utils/VersionManager;->getCurrentVersion(Landroid/content/Context;)I

    move-result v0

    .line 106
    invoke-static {p1}, Lcom/appsgeyser/sdk/utils/VersionManager;->getPreviousVersion(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 109
    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/utils/VersionManager;->updateVersion(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 111
    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/utils/VersionManager;->updateVersion(Landroid/content/Context;I)V

    .line 113
    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->UPDATE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v0

    const-string v1, "update"

    invoke-direct {p0, v1, v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRequestWithAllArgs(Ljava/lang/String;ILandroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendUsageInfo(Landroid/content/Context;)V
    .locals 2

    .line 93
    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->USAGE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v0

    const-string v1, "usage"

    invoke-direct {p0, v1, v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRequestWithAllArgs(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public setConfigPhpModel(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    return-void
.end method
