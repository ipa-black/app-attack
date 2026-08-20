.class public abstract Lcom/appodeal/ads/unified/UnifiedAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdParamsType::",
        "Lcom/appodeal/ads/unified/UnifiedAdParams;",
        "UnifiedAdCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedAdCallback;",
        "NetworkRequestParamsType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "TUnifiedAdParamsType;TNetworkRequestParamsType;TUnifiedAdCallbackType;)V"
        }
    .end annotation
.end method

.method public onClicked()V
    .locals 0

    return-void
.end method

.method public abstract onDestroy()V
.end method

.method public onError(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 0

    return-void
.end method

.method public onFinished()V
    .locals 0

    return-void
.end method

.method public onHide()V
    .locals 0

    return-void
.end method

.method public onImpression()V
    .locals 0

    return-void
.end method

.method public onLoaded()V
    .locals 0

    return-void
.end method

.method public onMediationLoss(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public onMediationWin()V
    .locals 0

    return-void
.end method

.method public onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TUnifiedAdParamsType;)V"
        }
    .end annotation

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
