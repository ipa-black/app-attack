.class public final Lcom/appodeal/ads/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/ApdServiceInitParams;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/g0;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final getJsonData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/g0;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getRestrictedData()Lcom/appodeal/ads/RestrictedData;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    return-object v0
.end method

.method public final isTestMode()Z
    .locals 1

    sget-object v0, Lcom/appodeal/ads/j0;->c:Lcom/appodeal/ads/j0;

    invoke-virtual {v0}, Lcom/appodeal/ads/j0;->isTestMode()Z

    move-result v0

    return v0
.end method
