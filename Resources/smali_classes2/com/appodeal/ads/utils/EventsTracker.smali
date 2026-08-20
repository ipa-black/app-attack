.class public Lcom/appodeal/ads/utils/EventsTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/EventsTracker$EventsListener;,
        Lcom/appodeal/ads/utils/EventsTracker$a;,
        Lcom/appodeal/ads/utils/EventsTracker$EventType;
    }
.end annotation


# static fields
.field public static e:Lcom/appodeal/ads/utils/EventsTracker;


# instance fields
.field public final a:Ljava/util/EnumMap;

.field public final b:Lcom/appodeal/ads/utils/EventsTracker$a;

.field public final c:Ljava/util/HashMap;

.field public final d:Lcom/appodeal/ads/storage/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->a:Ljava/util/EnumMap;

    new-instance v0, Lcom/appodeal/ads/utils/EventsTracker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/EventsTracker$a;-><init>(Lcom/appodeal/ads/utils/EventsTracker$a;)V

    iput-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->b:Lcom/appodeal/ads/utils/EventsTracker$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->c:Ljava/util/HashMap;

    sget-object v0, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    iput-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->d:Lcom/appodeal/ads/storage/o;

    return-void
.end method

.method public static get()Lcom/appodeal/ads/utils/EventsTracker;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/EventsTracker;->e:Lcom/appodeal/ads/utils/EventsTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/EventsTracker;

    invoke-direct {v0}, Lcom/appodeal/ads/utils/EventsTracker;-><init>()V

    sput-object v0, Lcom/appodeal/ads/utils/EventsTracker;->e:Lcom/appodeal/ads/utils/EventsTracker;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final varargs a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;[Lcom/appodeal/ads/utils/EventsTracker$EventType;)I
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Lcom/appodeal/ads/utils/EventsTracker$a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/appodeal/ads/utils/EventsTracker$a;->a(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Lcom/appodeal/ads/utils/EventsTracker$a;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/utils/EventsTracker$a;

    iget-object v1, p0, Lcom/appodeal/ads/utils/EventsTracker;->b:Lcom/appodeal/ads/utils/EventsTracker$a;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/EventsTracker$a;-><init>(Lcom/appodeal/ads/utils/EventsTracker$a;)V

    iget-object v1, p0, Lcom/appodeal/ads/utils/EventsTracker;->a:Ljava/util/EnumMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/appodeal/ads/utils/EventsTracker$a;

    :goto_0
    return-object v0
.end method

.method public final a(Lcom/appodeal/ads/utils/EventsTracker$EventType;)Lorg/json/JSONObject;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->d:Lcom/appodeal/ads/storage/o;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->values()[Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getCodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getCodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/l;Lcom/appodeal/ads/utils/EventsTracker$EventType;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p2, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    .line 2
    invoke-virtual {p2}, Lcom/appodeal/ads/AdNetwork;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Lcom/appodeal/ads/utils/EventsTracker$a;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/appodeal/ads/utils/EventsTracker$a;->a(Lcom/appodeal/ads/utils/EventsTracker$EventType;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->d:Lcom/appodeal/ads/storage/o;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/storage/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getCodeName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getCodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->d:Lcom/appodeal/ads/storage/o;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/appodeal/ads/storage/o;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 5
    :goto_1
    sget-object v0, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Impression:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/appodeal/ads/utils/EventsTracker;->c:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/utils/EventsTracker$EventsListener;

    invoke-interface {v0, p1, p2}, Lcom/appodeal/ads/utils/EventsTracker$EventsListener;->onImpressionStored(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final b(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->b:Lcom/appodeal/ads/utils/EventsTracker$a;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/utils/EventsTracker$a;->a(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/appodeal/ads/utils/EventsTracker$EventType;)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->values()[Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getCodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Lcom/appodeal/ads/utils/EventsTracker$a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/appodeal/ads/utils/EventsTracker$a;->a(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public varargs getEventCount(Lcom/appodeal/ads/utils/EventsTracker$EventType;[Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p2, v0

    invoke-virtual {p0, v3}, Lcom/appodeal/ads/utils/EventsTracker;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Lcom/appodeal/ads/utils/EventsTracker$a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/appodeal/ads/utils/EventsTracker$a;->a(Lcom/appodeal/ads/utils/EventsTracker$EventType;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public subscribeEventsListener(Ljava/lang/String;Lcom/appodeal/ads/utils/EventsTracker$EventsListener;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unsubscribeEventsListener(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/EventsTracker;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
