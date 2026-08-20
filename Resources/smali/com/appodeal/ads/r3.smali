.class public final Lcom/appodeal/ads/r3;
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
.field public final synthetic a:Lcom/appodeal/ads/networking/binders/b;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/networking/binders/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/r3;->a:Lcom/appodeal/ads/networking/binders/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;

    .line 1
    const-string v0, "$this$jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/p3;

    iget-object v1, p0, Lcom/appodeal/ads/r3;->a:Lcom/appodeal/ads/networking/binders/b;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/p3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    invoke-static {v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "adapters"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/appodeal/ads/q3;

    iget-object v1, p0, Lcom/appodeal/ads/r3;->a:Lcom/appodeal/ads/networking/binders/b;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/q3;-><init>(Lcom/appodeal/ads/networking/binders/b;)V

    invoke-static {v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonArray(Lkotlin/jvm/functions/Function1;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "show_array"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
