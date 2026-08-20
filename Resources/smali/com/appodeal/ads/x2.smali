.class public final Lcom/appodeal/ads/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/appodeal/ads/x2;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lkotlin/Lazy;

.field public static final d:Lkotlin/Lazy;

.field public static e:Lorg/json/JSONObject;

.field public static f:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

.field public static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/appodeal/ads/x2;

    invoke-direct {v0}, Lcom/appodeal/ads/x2;-><init>()V

    sput-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    sget-object v0, Lcom/appodeal/ads/x2$d;->a:Lcom/appodeal/ads/x2$d;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/x2;->b:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/ads/x2$c;->a:Lcom/appodeal/ads/x2$c;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/x2;->c:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/ads/x2$b;->a:Lcom/appodeal/ads/x2$b;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/x2;->d:Lkotlin/Lazy;

    sget-object v0, Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;->INSTANCE:Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;

    sput-object v0, Lcom/appodeal/ads/x2;->f:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lat"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lon"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ad_stats"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "inapps"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/x2;->g:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/appodeal/ads/x2;->h:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/x2;->f:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    invoke-virtual {v0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/appodeal/ads/regulator/UserConsent;)V
    .locals 1

    const-string v0, "publisherZoneConsent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appodeal/ads/regulator/h;->a(Lcom/appodeal/ads/regulator/UserConsent;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/appodeal/ads/q4;->c:Z

    if-eqz p0, :cond_1

    .line 20
    sget-object p0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object p0

    invoke-interface {p0}, Lcom/appodeal/ads/regulator/h;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 22
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/r0;->d()V

    :cond_1
    return-void
.end method

.method public static a(Lcom/appodeal/consent/Consent;)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appodeal/ads/regulator/h;->a(Lcom/appodeal/consent/Consent;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/appodeal/ads/q4;->c:Z

    if-eqz p0, :cond_1

    .line 17
    sget-object p0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object p0

    invoke-interface {p0}, Lcom/appodeal/ads/regulator/h;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 19
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/r0;->d()V

    :cond_1
    return-void
.end method

.method public static final a(Ljava/lang/Boolean;)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/appodeal/ads/regulator/h;->a(Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/appodeal/ads/q4;->c:Z

    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object p0

    invoke-interface {p0}, Lcom/appodeal/ads/regulator/h;->a()Z

    move-result p0

    if-nez p0, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object p0

    invoke-interface {p0}, Lcom/appodeal/ads/regulator/h;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 16
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/r0;->d()V

    :cond_1
    return-void
.end method

.method public static final a(Lorg/json/JSONObject;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appodeal/ads/regulator/h;->a(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/appodeal/ads/x2;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const-string v1, "gdpr"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "do_not_collect"

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v7, Lcom/appodeal/ads/x2;->h:Ljava/util/HashSet;

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    move v2, v6

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/appodeal/ads/x2;->g:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_2
    const-string v0, "ccpa"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 25
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_5

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v4, Lcom/appodeal/ads/x2;->h:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/appodeal/ads/x2;->h:Ljava/util/HashSet;

    sget-object v0, Lcom/appodeal/ads/x2;->g:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void
.end method

.method public static final a(Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;)Z
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "applyAdvertisingProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/appodeal/ads/x2;->f:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    invoke-virtual {v0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->isLimitAdTrackingEnabled()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->isLimitAdTrackingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lcom/appodeal/ads/x2;->f:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    invoke-virtual {v0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->getId()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/appodeal/ads/regulator/h;->a()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/appodeal/ads/regulator/h;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 9
    :goto_2
    sput-object p0, Lcom/appodeal/ads/x2;->f:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object p0

    invoke-interface {p0}, Lcom/appodeal/ads/regulator/h;->a()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 11
    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object p0

    invoke-interface {p0}, Lcom/appodeal/ads/regulator/h;->g()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 13
    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result p0

    if-nez p0, :cond_5

    :goto_3
    move p0, v3

    goto :goto_4

    :cond_5
    move p0, v2

    :goto_4
    if-eq v1, p0, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/x2;->h:Ljava/util/HashSet;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/appodeal/ads/storage/a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/x2;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/storage/a;

    return-object v0
.end method

.method public static final b(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    .line 2
    const-string v1, "restrictedData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/j4;->isUserProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/appodeal/ads/x2;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final c()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static final c(Lorg/json/JSONObject;)V
    .locals 2

    sput-object p0, Lcom/appodeal/ads/x2;->e:Lorg/json/JSONObject;

    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->b()Lcom/appodeal/ads/storage/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "it.toString()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcom/appodeal/ads/storage/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static final d()Lcom/appodeal/consent/Consent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->c()Lcom/appodeal/consent/Consent;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lcom/appodeal/ads/regulator/h;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/x2;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/regulator/h;

    return-object v0
.end method

.method public static final f()Lorg/json/JSONObject;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/x2;->e:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->b()Lcom/appodeal/ads/storage/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/storage/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final g()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/appodeal/ads/x2;->f:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    invoke-virtual {v0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lcom/appodeal/ads/x2;->f:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    invoke-virtual {v0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->isAdvertisingIdWasGenerated()Z

    move-result v0

    return v0
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lcom/appodeal/ads/x2;->f:Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    invoke-virtual {v0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->isLimitAdTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method public static final j()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/appodeal/ads/x2$a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/appodeal/ads/x2$a;

    iget v1, v0, Lcom/appodeal/ads/x2$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/x2$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/x2$a;

    invoke-direct {v0, p0, p4}, Lcom/appodeal/ads/x2$a;-><init>(Lcom/appodeal/ads/x2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/appodeal/ads/x2$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/x2$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/appodeal/ads/x2$a;->a:Lcom/appodeal/ads/x2;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/appodeal/ads/x2;->a(Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;)Z

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object p3

    iput-object p0, v0, Lcom/appodeal/ads/x2$a;->a:Lcom/appodeal/ads/x2;

    iput v3, v0, Lcom/appodeal/ads/x2$a;->d:I

    invoke-interface {p3, p2, p1, v0}, Lcom/appodeal/ads/regulator/h;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    sget-object p1, Lcom/appodeal/ads/x2;->d:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/networking/cache/c;

    .line 27
    invoke-virtual {p1}, Lcom/appodeal/ads/networking/cache/c;->a()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/appodeal/ads/x2;->a(Lorg/json/JSONObject;)V

    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
