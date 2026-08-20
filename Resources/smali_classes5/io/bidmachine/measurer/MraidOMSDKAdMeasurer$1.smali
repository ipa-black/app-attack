.class Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$1;
.super Ljava/lang/Object;
.source "MraidOMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->onAdViewReady(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;Landroid/webkit/WebView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$1;->this$0:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    iput-object p2, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 45
    const-string v0, ""

    :try_start_0
    invoke-static {}, Lio/bidmachine/measurer/OMSDKSettings;->getPartner()Lcom/iab/omid/library/appodeal/adsession/Partner;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v2, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$1;->this$0:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    invoke-virtual {v2}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->isSessionPrepared()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    sget-object v2, Lcom/iab/omid/library/appodeal/adsession/CreativeType;->HTML_DISPLAY:Lcom/iab/omid/library/appodeal/adsession/CreativeType;

    sget-object v3, Lcom/iab/omid/library/appodeal/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/appodeal/adsession/ImpressionType;

    sget-object v4, Lcom/iab/omid/library/appodeal/adsession/Owner;->NATIVE:Lcom/iab/omid/library/appodeal/adsession/Owner;

    sget-object v5, Lcom/iab/omid/library/appodeal/adsession/Owner;->NONE:Lcom/iab/omid/library/appodeal/adsession/Owner;

    const/4 v6, 0x0

    .line 50
    invoke-static {v2, v3, v4, v5, v6}, Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/appodeal/adsession/CreativeType;Lcom/iab/omid/library/appodeal/adsession/ImpressionType;Lcom/iab/omid/library/appodeal/adsession/Owner;Lcom/iab/omid/library/appodeal/adsession/Owner;Z)Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$1;->val$webView:Landroid/webkit/WebView;

    .line 56
    invoke-static {v1, v3, v0, v0}, Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/appodeal/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;

    move-result-object v0

    .line 60
    invoke-static {v2, v0}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$1;->this$0:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    invoke-virtual {v1, v0}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->prepareAdSession(Lcom/iab/omid/library/appodeal/adsession/AdSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 64
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
