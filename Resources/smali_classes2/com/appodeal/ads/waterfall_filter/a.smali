.class public final Lcom/appodeal/ads/waterfall_filter/a;
.super Lcom/appodeal/ads/waterfall_filter/d;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public e:Lcom/appodeal/ads/waterfall_filter/d;

.field public final f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V
    .locals 2

    invoke-direct {p0}, Lcom/appodeal/ads/waterfall_filter/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/waterfall_filter/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/waterfall_filter/d;->a(Lorg/json/JSONObject;)V

    const-string v1, "networks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p2, p0, Lcom/appodeal/ads/waterfall_filter/a;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    new-instance v1, Lcom/appodeal/ads/waterfall_filter/c;

    invoke-direct {v1, p2}, Lcom/appodeal/ads/waterfall_filter/c;-><init>(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/appodeal/ads/waterfall_filter/b;

    invoke-direct {p2, p1}, Lcom/appodeal/ads/waterfall_filter/b;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/appodeal/ads/waterfall_filter/d;->a()Lcom/appodeal/ads/waterfall_filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/waterfall_filter/a;->e:Lcom/appodeal/ads/waterfall_filter/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;)V
    .locals 3

    invoke-virtual {p0}, Lcom/appodeal/ads/waterfall_filter/d;->a()Lcom/appodeal/ads/waterfall_filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/waterfall_filter/a;->e:Lcom/appodeal/ads/waterfall_filter/d;

    iget-object v0, p0, Lcom/appodeal/ads/waterfall_filter/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/waterfall_filter/e;

    iget-object v2, p0, Lcom/appodeal/ads/waterfall_filter/a;->e:Lcom/appodeal/ads/waterfall_filter/d;

    iget-object v2, v2, Lcom/appodeal/ads/waterfall_filter/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Lcom/appodeal/ads/waterfall_filter/e;->a(Ljava/util/ArrayList;Lcom/appodeal/ads/r;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/waterfall_filter/a;->e:Lcom/appodeal/ads/waterfall_filter/d;

    .line 1
    iget-object v0, p1, Lcom/appodeal/ads/waterfall_filter/d;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/appodeal/ads/waterfall_filter/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/appodeal/ads/waterfall_filter/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "is_precache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/appodeal/ads/waterfall_filter/d;->a:Ljava/util/ArrayList;

    goto :goto_2

    :cond_1
    iget-object v2, p1, Lcom/appodeal/ads/waterfall_filter/d;->b:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/appodeal/ads/waterfall_filter/a;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-static {p1, p0}, Lcom/appodeal/ads/n5;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/waterfall_filter/a;)V

    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/waterfall_filter/a;->e:Lcom/appodeal/ads/waterfall_filter/d;

    iget-object v0, v0, Lcom/appodeal/ads/waterfall_filter/d;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/waterfall_filter/a;->e:Lcom/appodeal/ads/waterfall_filter/d;

    iget-object v0, v0, Lcom/appodeal/ads/waterfall_filter/d;->b:Ljava/util/ArrayList;

    return-object v0
.end method
