.class Lcom/appsgeyser/sdk/InternalEntryPoint$1;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint;->onDeviceIdParametersObtained(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .locals 3

    .line 319
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$000(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->initWithDeviceIdParameters(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V

    if-eqz p1, :cond_7

    .line 322
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$100(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$100(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAdvertisingTermsDialog()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->show(Z)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$200(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$300(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;->onDialogEnableReceived(Z)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$400(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$500(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isRateMyAppActive()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;->onRateMyAppEnableReceived(Z)V

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$600(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$700(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserAccess()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;->onAccessDataEnable(Ljava/lang/String;)V

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$800(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$900(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserDisableAds()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;->onDisableAdsDataEnable(Ljava/lang/String;)V

    .line 337
    :cond_4
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$1000(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    move-result-object v0

    if-nez v0, :cond_5

    .line 338
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    new-instance v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    iget-object v2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;-><init>(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$1002(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    .line 340
    :cond_5
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getFullScreenDelay()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/configuration/Constants;->setFullScreenDelay(J)V

    .line 342
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getFullscreenBannerCountToShow()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setTimesToShow(I)V

    .line 343
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnTouchFSEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setOnTouchFSEnabled(Z)V

    .line 345
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isTakeOffFSEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 346
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object v0

    const-string v1, "on_take_off"

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->load(Ljava/lang/String;)V

    .line 348
    :cond_6
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnResumeFSEnabled()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$1102(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z

    :cond_7
    return-void
.end method
