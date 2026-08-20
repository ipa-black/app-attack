.class Lcom/appodeal/ads/unified/tasks/S2SAdTask$5;
.super Lcom/appodeal/ads/unified/tasks/S2SAdTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/unified/tasks/S2SAdTask;->requestNast(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/tasks/S2SAdTask<",
        "Lcom/appodeal/ads/utils/ExchangeAd;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$unifiedAdCallback:Lcom/appodeal/ads/unified/UnifiedAdCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;Lcom/appodeal/ads/unified/tasks/AdParamsResolver;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    iput-object p7, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$5;->val$unifiedAdCallback:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    invoke-direct/range {p0 .. p6}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;Lcom/appodeal/ads/unified/tasks/AdParamsResolver;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V

    return-void
.end method


# virtual methods
.method public onParamsProcessSuccess(Lcom/appodeal/ads/utils/ExchangeAd;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->onParamsProcessSuccess(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "exchange_ad"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$5;->val$unifiedAdCallback:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdInfoRequested(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onParamsProcessSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/appodeal/ads/utils/ExchangeAd;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask$5;->onParamsProcessSuccess(Lcom/appodeal/ads/utils/ExchangeAd;)V

    return-void
.end method
