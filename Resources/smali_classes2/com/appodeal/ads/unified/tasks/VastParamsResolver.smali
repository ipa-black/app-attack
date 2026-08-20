.class final Lcom/appodeal/ads/unified/tasks/VastParamsResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/tasks/AdParamsResolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appodeal/ads/unified/tasks/AdParamsResolver<",
        "Lcom/appodeal/ads/utils/ExchangeAd;",
        "Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final inputParams:Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/unified/tasks/VastParamsResolver;->inputParams:Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;

    return-void
.end method


# virtual methods
.method public processResponse(Lcom/appodeal/ads/utils/ExchangeAd;Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/utils/ExchangeAd;",
            "Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback<",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;

    iget-object v1, p0, Lcom/appodeal/ads/unified/tasks/VastParamsResolver;->inputParams:Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;-><init>(Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;)V

    invoke-virtual {p1}, Lcom/appodeal/ads/utils/ExchangeAd;->getAdm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->setAdm(Ljava/lang/String;)Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appodeal/ads/utils/ExchangeAd;->getCloseTime()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/appodeal/ads/utils/ExchangeAd;->getCloseTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->setCloseTime(I)Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams$Builder;->build()Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;->onResolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic processResponse(Ljava/lang/Object;Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/utils/ExchangeAd;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/tasks/VastParamsResolver;->processResponse(Lcom/appodeal/ads/utils/ExchangeAd;Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;)V

    return-void
.end method
