.class public final Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;
.super Ljava/lang/Object;
.source "IronSourceNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParams"
.end annotation


# instance fields
.field public final instanceId:Ljava/lang/String;

.field public final jsonData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;->instanceId:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;->jsonData:Lorg/json/JSONObject;

    return-void
.end method
