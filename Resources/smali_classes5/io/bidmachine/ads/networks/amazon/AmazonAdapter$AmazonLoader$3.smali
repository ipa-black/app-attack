.class Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$3;
.super Ljava/lang/Object;
.source "AmazonAdapter.java"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->load(Lcom/amazon/device/ads/DTBAdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$3;->this$0:Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$3;->this$0:Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    invoke-static {v0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->access$200(Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;)Lio/bidmachine/HeaderBiddingCollectParamsCallback;

    move-result-object v0

    invoke-static {p1}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter;->access$100(Lcom/amazon/device/ads/AdError;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 2

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    iget-object v1, p0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$3;->this$0:Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    invoke-virtual {v1, p1, v0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->handleResponse(Lcom/amazon/device/ads/DTBAdResponse;Ljava/util/Map;)V

    .line 207
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$3;->this$0:Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    invoke-static {p1}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->access$200(Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;)Lio/bidmachine/HeaderBiddingCollectParamsCallback;

    move-result-object p1

    const-string v0, "Response returned empty parameters"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$3;->this$0:Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;

    invoke-static {p1}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->access$200(Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;)Lio/bidmachine/HeaderBiddingCollectParamsCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    :goto_0
    return-void
.end method
