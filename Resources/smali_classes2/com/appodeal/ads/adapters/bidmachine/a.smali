.class public final Lcom/appodeal/ads/adapters/bidmachine/a;
.super Lcom/appodeal/ads/ApdService;
.source "ApdBidMachineService.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "bidmachine"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/ApdService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onInitialize(Landroid/content/Context;Lcom/appodeal/ads/ApdServiceInitParams;Lcom/appodeal/ads/ApdServiceInitializationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/appodeal/ads/ApdServiceInitParams;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {p3, p1}, Lcom/appodeal/ads/ApdServiceInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/a$a;

    invoke-direct {v0, p3}, Lcom/appodeal/ads/adapters/bidmachine/a$a;-><init>(Lcom/appodeal/ads/ApdServiceInitializationListener;)V

    .line 17
    invoke-static {}, Lcom/appodeal/ads/adapters/bidmachine/b;->a()Lcom/appodeal/ads/adapters/bidmachine/b;

    move-result-object p3

    .line 18
    invoke-interface {p2}, Lcom/appodeal/ads/ApdServiceInitParams;->getJsonData()Lorg/json/JSONObject;

    move-result-object v1

    .line 19
    invoke-virtual {p3, p1, v1, p2, v0}, Lcom/appodeal/ads/adapters/bidmachine/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/appodeal/ads/AppodealStateParams;Lcom/appodeal/ads/adapters/bidmachine/b$a;)V

    return-void
.end method

.method public final setLogging(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/bidmachine/BidMachine;->setLoggingEnabled(Z)V

    return-void
.end method
