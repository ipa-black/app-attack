.class public final Lcom/appodeal/consent/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/appodeal/consent/internal/a;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appodeal/consent/internal/a;->a()Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/consent/internal/a;->n()Lkotlin/Pair;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/appodeal/consent/internal/a;->i()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v3, Lcom/appodeal/consent/internal/j$a;

    invoke-direct {v3, v0, p0, v1}, Lcom/appodeal/consent/internal/j$a;-><init>(Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;Lcom/appodeal/consent/internal/a;Lkotlin/Pair;)V

    invoke-static {v2, v3}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    return-object v2
.end method
