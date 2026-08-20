.class public final Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParams"
.end annotation


# instance fields
.field public jsonData:Lorg/json/JSONObject;

.field public restrictedData:Lcom/appodeal/ads/RestrictedData;

.field public sdk:Lcom/applovin/sdk/AppLovinSdk;

.field public zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->zoneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    iput-object p3, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->jsonData:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/appodeal/ads/RestrictedData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->jsonData:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    return-void
.end method
