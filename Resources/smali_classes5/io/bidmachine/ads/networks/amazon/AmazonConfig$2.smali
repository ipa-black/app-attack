.class Lio/bidmachine/ads/networks/amazon/AmazonConfig$2;
.super Ljava/util/HashMap;
.source "AmazonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/amazon/AmazonConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/amazon/AmazonConfig;
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
.field final synthetic this$0:Lio/bidmachine/ads/networks/amazon/AmazonConfig;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$slotUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/amazon/AmazonConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lio/bidmachine/ads/networks/amazon/AmazonConfig$2;->this$0:Lio/bidmachine/ads/networks/amazon/AmazonConfig;

    iput-object p2, p0, Lio/bidmachine/ads/networks/amazon/AmazonConfig$2;->val$slotUuid:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/ads/networks/amazon/AmazonConfig$2;->val$appKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string p1, "slot_uuid"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/amazon/AmazonConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    const-string p1, "app_key"

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/ads/networks/amazon/AmazonConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
