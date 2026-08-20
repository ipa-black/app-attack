.class Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter$1;
.super Lcom/adcolony/sdk/AdColonySignalsListener;
.source "AdColonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;->onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$collectCallback:Lio/bidmachine/HeaderBiddingCollectParamsCallback;

.field final synthetic val$zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter$1;->this$0:Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;

    iput-object p2, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter$1;->val$zoneId:Ljava/lang/String;

    iput-object p4, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter$1;->val$collectCallback:Lio/bidmachine/HeaderBiddingCollectParamsCallback;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonySignalsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    const-string v1, "app_id"

    iget-object v2, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter$1;->val$appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "zone_id"

    iget-object v2, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter$1;->val$zoneId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter$1;->val$collectCallback:Lio/bidmachine/HeaderBiddingCollectParamsCallback;

    invoke-interface {p1, v0}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    return-void
.end method
