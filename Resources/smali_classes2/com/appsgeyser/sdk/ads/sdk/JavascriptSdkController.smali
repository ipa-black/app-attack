.class public Lcom/appsgeyser/sdk/ads/sdk/JavascriptSdkController;
.super Lcom/appsgeyser/sdk/ads/BaseSecureJsInterface;
.source "JavascriptSdkController.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/BaseSecureJsInterface;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/sdk/JavascriptSdkController;->context:Landroid/content/Context;

    return-void
.end method

.method private jsonStringToMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public isSdkActive(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 63
    invoke-static {}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->getInstance()Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->getWrapperByKey(Ljava/lang/String;)Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->isActive()Z

    move-result p1

    return p1
.end method

.method public setFSBannerCallbacksForSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public showFSBannerForSdk(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 68
    invoke-static {}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->getInstance()Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->getWrapperByKey(Ljava/lang/String;)Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->showFsBanner()V

    return-void
.end method

.method public startSessionForSdk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 46
    invoke-static {}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->getInstance()Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->getWrapperByKey(Ljava/lang/String;)Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;

    move-result-object p1

    .line 47
    invoke-direct {p0, p2}, Lcom/appsgeyser/sdk/ads/sdk/JavascriptSdkController;->jsonStringToMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->addExtras(Ljava/util/HashMap;)V

    .line 48
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/sdk/JavascriptSdkController;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 49
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object p2

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/sdk/JavascriptSdkController;->context:Landroid/content/Context;

    .line 50
    invoke-virtual {p2, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object p2

    sget-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->SDK:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    .line 51
    invoke-virtual {p2, v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setBannerType(Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;)V

    .line 52
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/sdk/JavascriptSdkController;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->startSession(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public stopSessionForSdk(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 58
    invoke-static {}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->getInstance()Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapperFactory;->getWrapperByKey(Ljava/lang/String;)Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->stopSession()V

    return-void
.end method
