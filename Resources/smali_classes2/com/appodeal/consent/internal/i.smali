.class public final Lcom/appodeal/consent/internal/i;
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
.field public final synthetic a:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

.field public final synthetic b:Lcom/appodeal/consent/internal/a;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;",
            "Lcom/appodeal/consent/internal/a;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/consent/internal/i;->a:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    iput-object p2, p0, Lcom/appodeal/consent/internal/i;->b:Lcom/appodeal/consent/internal/a;

    iput-object p3, p0, Lcom/appodeal/consent/internal/i;->c:Lkotlin/Pair;

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

    iget-object v0, p0, Lcom/appodeal/consent/internal/i;->a:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    invoke-virtual {v0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/i;->a:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    invoke-virtual {v0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "advertisingTracking"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/i;->b:Lcom/appodeal/consent/internal/a;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/i;->b:Lcom/appodeal/consent/internal/a;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/i;->c:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/i;->c:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/i;->b:Lcom/appodeal/consent/internal/a;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hwv"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/i;->b:Lcom/appodeal/consent/internal/a;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "make"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/i;->b:Lcom/appodeal/consent/internal/a;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/consent/internal/i;->b:Lcom/appodeal/consent/internal/a;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/a;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osv"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
