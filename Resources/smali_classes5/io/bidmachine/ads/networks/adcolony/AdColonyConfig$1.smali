.class Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$1;
.super Ljava/util/HashMap;
.source "AdColonyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$storeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$1;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$1;->val$storeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const-string v0, "app_id"

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string p1, "store_id"

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
