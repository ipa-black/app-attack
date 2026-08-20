.class Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$2;
.super Ljava/util/HashMap;
.source "AdColonyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;
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
.field final synthetic this$0:Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$storeId:Ljava/lang/String;

.field final synthetic val$zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$2;->this$0:Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;

    iput-object p2, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$2;->val$zoneId:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$2;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$2;->val$storeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 65
    const-string p1, "zone_id"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    const-string p1, "app_id"

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 70
    const-string p1, "store_id"

    invoke-virtual {p0, p1, p4}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
