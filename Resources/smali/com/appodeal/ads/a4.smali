.class public final Lcom/appodeal/ads/a4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/modules/common/internal/service/ServiceData;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/modules/common/internal/service/ServiceData;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a4;->a:Lcom/appodeal/ads/modules/common/internal/service/ServiceData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;

    .line 1
    const-string v0, "$this$jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/a4;->a:Lcom/appodeal/ads/modules/common/internal/service/ServiceData;

    check-cast v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attribution_id"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/a4;->a:Lcom/appodeal/ads/modules/common/internal/service/ServiceData;

    check-cast v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;->getConversionData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/appodeal/ads/z3;

    invoke-direct {v1, v0}, Lcom/appodeal/ads/z3;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_1
    const-string v0, "conversion_data"

    invoke-virtual {p1, v0, v2}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
