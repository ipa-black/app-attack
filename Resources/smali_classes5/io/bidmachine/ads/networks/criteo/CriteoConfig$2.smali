.class Lio/bidmachine/ads/networks/criteo/CriteoConfig$2;
.super Ljava/util/HashMap;
.source "CriteoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/criteo/CriteoConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Lio/bidmachine/Orientation;)Lio/bidmachine/ads/networks/criteo/CriteoConfig;
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
.field final synthetic this$0:Lio/bidmachine/ads/networks/criteo/CriteoConfig;

.field final synthetic val$adUnitId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/criteo/CriteoConfig;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoConfig$2;->this$0:Lio/bidmachine/ads/networks/criteo/CriteoConfig;

    iput-object p2, p0, Lio/bidmachine/ads/networks/criteo/CriteoConfig$2;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string p1, "ad_unit_id"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/criteo/CriteoConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
