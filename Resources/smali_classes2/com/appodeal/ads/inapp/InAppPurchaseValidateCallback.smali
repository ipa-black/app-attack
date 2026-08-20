.class public interface abstract Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\'J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\'\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;",
        "",
        "onInAppPurchaseValidateFail",
        "",
        "purchase",
        "Lcom/appodeal/ads/inapp/InAppPurchase;",
        "errors",
        "",
        "Lcom/appodeal/ads/service/ServiceError;",
        "onInAppPurchaseValidateSuccess",
        "apd_public"
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
.method public abstract onInAppPurchaseValidateFail(Lcom/appodeal/ads/inapp/InAppPurchase;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/inapp/InAppPurchase;",
            "Ljava/util/List<",
            "Lcom/appodeal/ads/service/ServiceError;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInAppPurchaseValidateSuccess(Lcom/appodeal/ads/inapp/InAppPurchase;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/inapp/InAppPurchase;",
            "Ljava/util/List<",
            "Lcom/appodeal/ads/service/ServiceError;",
            ">;)V"
        }
    .end annotation
.end method
