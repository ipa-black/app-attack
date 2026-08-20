.class Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;
.super Ljava/util/HashMap;
.source "NotsyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/notsy/NotsyConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/ads/networks/notsy/NotsyConfig;
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
.field final synthetic this$0:Lio/bidmachine/ads/networks/notsy/NotsyConfig;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$customParams:Ljava/util/Map;

.field final synthetic val$price:Ljava/lang/String;

.field final synthetic val$score:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/notsy/NotsyConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;->this$0:Lio/bidmachine/ads/networks/notsy/NotsyConfig;

    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;->val$score:Ljava/lang/String;

    iput-object p4, p0, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;->val$price:Ljava/lang/String;

    iput-object p5, p0, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;->val$customParams:Ljava/util/Map;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string p1, "ad_unit_id"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string p1, "score"

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string p1, "price"

    invoke-virtual {p0, p1, p4}, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 50
    invoke-virtual {p0, p5}, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
