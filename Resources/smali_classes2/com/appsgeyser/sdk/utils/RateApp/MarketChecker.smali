.class public Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;
.super Ljava/lang/Object;
.source "MarketChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;


# instance fields
.field private final GP_URL:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final checkJob:Ljava/lang/Runnable;

.field private listener:Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;

.field private packageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "https://play.google.com/store/apps/details?id="

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->GP_URL:Ljava/lang/String;

    .line 16
    const-string v0, "MarketChecker"

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->LOG_TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->checkJob:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;)Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->listener:Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;

    return-object p0
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;
    .locals 1

    .line 26
    sget-object v0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->instance:Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;

    if-eqz v0, :cond_0

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;-><init>()V

    return-object v0
.end method

.method private getResultCode()I
    .locals 6

    const-string v0, "https://play.google.com/store/apps/details?id="

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 54
    :try_start_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->packageId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 56
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 57
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 59
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const-string v3, "MarketChecker"

    const-string v4, "Error while connecting with Google Play"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_2
    return v1

    :catchall_1
    move-exception v1

    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 65
    :cond_1
    throw v1
.end method


# virtual methods
.method public chekIsAppOnMarket(Ljava/lang/String;Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;)V
    .locals 0

    .line 45
    iput-object p2, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->listener:Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;

    .line 46
    iput-object p1, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->packageId:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->checkJob:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$new$0$com-appsgeyser-sdk-utils-RateApp-MarketChecker()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->getResultCode()I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->listener:Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$1;

    invoke-direct {v2, p0, v0}, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$1;-><init>(Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
