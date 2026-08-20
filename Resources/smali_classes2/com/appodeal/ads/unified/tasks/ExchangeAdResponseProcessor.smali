.class final Lcom/appodeal/ads/unified/tasks/ExchangeAdResponseProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appodeal/ads/unified/tasks/AdResponseProcessor<",
        "Lcom/appodeal/ads/utils/ExchangeAd;",
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
.method public processResponse(Ljava/net/URLConnection;Ljava/lang/String;Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback<",
            "Lcom/appodeal/ads/utils/ExchangeAd;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Lcom/appodeal/ads/utils/ExchangeAd;

    sget-object v1, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    .line 1
    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object v1

    .line 2
    iget-wide v1, v1, Lcom/appodeal/ads/segments/k;->a:J

    .line 3
    invoke-direct {v0, p2, p1, v1, v2}, Lcom/appodeal/ads/utils/ExchangeAd;-><init>(Ljava/lang/String;Ljava/util/Map;J)V

    invoke-interface {p3, v0}, Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback;->onProcessSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {p3, p1}, Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback;->onProcessFail(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_1
    return-void
.end method
