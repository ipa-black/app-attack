.class public final Lcom/appodeal/consent/internal/j$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/consent/internal/j;->a(Lcom/appodeal/consent/internal/a;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic a:Lcom/appodeal/consent/internal/a;

.field public final synthetic b:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

.field public final synthetic c:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;Lcom/appodeal/consent/internal/a;Lkotlin/Pair;)V
    .locals 0

    iput-object p2, p0, Lcom/appodeal/consent/internal/j$a;->a:Lcom/appodeal/consent/internal/a;

    iput-object p1, p0, Lcom/appodeal/consent/internal/j$a;->b:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    iput-object p3, p0, Lcom/appodeal/consent/internal/j$a;->c:Lkotlin/Pair;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;

    .line 1
    const-string v0, "$this$jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/consent/internal/h;

    iget-object v1, p0, Lcom/appodeal/consent/internal/j$a;->a:Lcom/appodeal/consent/internal/a;

    invoke-direct {v0, v1}, Lcom/appodeal/consent/internal/h;-><init>(Lcom/appodeal/consent/internal/a;)V

    invoke-static {v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/appodeal/consent/internal/i;

    iget-object v1, p0, Lcom/appodeal/consent/internal/j$a;->b:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    iget-object v2, p0, Lcom/appodeal/consent/internal/j$a;->a:Lcom/appodeal/consent/internal/a;

    iget-object v3, p0, Lcom/appodeal/consent/internal/j$a;->c:Lkotlin/Pair;

    invoke-direct {v0, v1, v2, v3}, Lcom/appodeal/consent/internal/i;-><init>(Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;Lcom/appodeal/consent/internal/a;Lkotlin/Pair;)V

    invoke-static {v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/j$a;->a:Lcom/appodeal/consent/internal/a;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/a;->d()Lcom/appodeal/consent/Consent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "consent"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/j$a;->a:Lcom/appodeal/consent/internal/a;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk_ver"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/j$a;->a:Lcom/appodeal/consent/internal/a;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ver"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
