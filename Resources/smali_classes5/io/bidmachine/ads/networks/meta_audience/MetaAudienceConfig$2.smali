.class Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig$2;
.super Ljava/util/HashMap;
.source "MetaAudienceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig$2;->this$0:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;

    iput-object p2, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig$2;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig$2;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 50
    const-string p1, "meta_key"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 52
    const-string p1, "app_id"

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
