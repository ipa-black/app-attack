.class final Lcom/appodeal/ads/unified/tasks/NastParamsResolver;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(Lcom/appodeal/ads/utils/ExchangeAd;Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/utils/ExchangeAd;",
            "Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/appodeal/ads/utils/ExchangeAd;->getAdm()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;->onResolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic processResponse(Ljava/lang/Object;Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/utils/ExchangeAd;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/tasks/NastParamsResolver;->processResponse(Lcom/appodeal/ads/utils/ExchangeAd;Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;)V

    return-void
.end method
