.class Lio/bidmachine/ads/networks/pangle/PangleConfig$2;
.super Ljava/util/HashMap;
.source "PangleConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/pangle/PangleConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;)Lio/bidmachine/ads/networks/pangle/PangleConfig;
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
.field final synthetic this$0:Lio/bidmachine/ads/networks/pangle/PangleConfig;

.field final synthetic val$slotId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/pangle/PangleConfig;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleConfig$2;->this$0:Lio/bidmachine/ads/networks/pangle/PangleConfig;

    iput-object p2, p0, Lio/bidmachine/ads/networks/pangle/PangleConfig$2;->val$slotId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 41
    const-string p1, "slot_id"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/pangle/PangleConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
