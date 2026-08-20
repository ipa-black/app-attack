.class public interface abstract Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H&J2\u0010\u0005\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u00070\u00062\u0006\u0010\t\u001a\u00020\u0008H\u00a6@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;",
        "",
        "getAvailableServicesInfo",
        "",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceInfo;",
        "initialize",
        "Lkotlin/Result;",
        "Lcom/appodeal/ads/modules/common/internal/service/Service;",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;",
        "serviceOptions",
        "initialize-gIAlu-s",
        "(Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getAvailableServicesInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appodeal/ads/modules/common/internal/service/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initialize-gIAlu-s(Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/appodeal/ads/modules/common/internal/service/Service<",
            "+",
            "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
