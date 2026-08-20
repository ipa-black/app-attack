.class Lio/bidmachine/ads/networks/mraid/MraidParams;
.super Lio/bidmachine/unified/UnifiedParams;
.source "MraidParams.java"


# instance fields
.field final cacheControl:Lcom/explorestack/iab/CacheControl;

.field final closeableViewStyle:Lcom/explorestack/iab/utils/IabElementStyle;

.field final countDownStyle:Lcom/explorestack/iab/utils/IabElementStyle;

.field final creativeAdm:Ljava/lang/String;

.field final height:I

.field final omsdkEnabled:Z

.field final placeholderTimeoutSec:F

.field final progressDuration:I

.field final progressStyle:Lcom/explorestack/iab/utils/IabElementStyle;

.field final r1:Z

.field final r2:Z

.field final skipOffset:I

.field final storeUrl:Ljava/lang/String;

.field final useNativeClose:Z

.field final width:I


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lio/bidmachine/unified/UnifiedParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 37
    const-string v0, "creativeAdm"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->creativeAdm:Ljava/lang/String;

    .line 38
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->width:I

    .line 39
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->height:I

    .line 40
    const-string v0, "cacheControl"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/IabUtils;->toCacheControl(Ljava/lang/Object;)Lcom/explorestack/iab/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->cacheControl:Lcom/explorestack/iab/CacheControl;

    .line 41
    const-string v0, "placeholderTimeoutSec"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->placeholderTimeoutSec:F

    .line 42
    const-string v0, "skipOffset"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->skipOffset:I

    .line 43
    const-string v0, "useNativeClose"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->useNativeClose:Z

    .line 44
    const-string v0, "omsdk_enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->omsdkEnabled:Z

    .line 45
    const-string v0, "r1"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->r1:Z

    .line 46
    const-string v0, "r2"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->r2:Z

    .line 47
    const-string v0, "store_url"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->storeUrl:Ljava/lang/String;

    .line 48
    const-string v0, "progress_duration"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->progressDuration:I

    .line 49
    const-string v0, "closeable_view_style"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/utils/IabElementStyle;

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->closeableViewStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    .line 50
    const-string v0, "countdown_style"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/utils/IabElementStyle;

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->countDownStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    .line 51
    const-string v0, "progress_style"

    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/iab/utils/IabElementStyle;

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->progressStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    return-void
.end method


# virtual methods
.method public isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z
    .locals 2

    .line 56
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->creativeAdm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "creativeAdm"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 60
    :cond_0
    iget v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->width:I

    if-nez v0, :cond_1

    .line 61
    const-string v0, "width"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 64
    :cond_1
    iget v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->height:I

    if-nez v0, :cond_2

    .line 65
    const-string v0, "height"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
