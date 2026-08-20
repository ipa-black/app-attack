.class public final Lcom/appodeal/ads/segments/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/segments/k$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/appodeal/ads/segments/k$a;

.field public final c:I

.field public final d:[Lcom/appodeal/ads/segments/i;

.field public final e:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/appodeal/ads/segments/k;->a:J

    new-instance v0, Lcom/appodeal/ads/segments/k$a;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/segments/k$a;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/appodeal/ads/segments/k;->b:Lcom/appodeal/ads/segments/k$a;

    invoke-static {p1}, Lcom/appodeal/ads/segments/j;->a(Lorg/json/JSONObject;)[Lcom/appodeal/ads/segments/i;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/segments/k;->d:[Lcom/appodeal/ads/segments/i;

    const-string v0, "match_rule"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/segments/a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/segments/k;->c:I

    const-string v0, "placements"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/segments/k;->e:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    sget-object v0, Lcom/appodeal/ads/segments/h;->a:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/appodeal/ads/segments/k;->e:Lorg/json/JSONArray;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/appodeal/ads/segments/k;->e:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/appodeal/ads/segments/k;->e:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/appodeal/ads/segments/g;->a(Lorg/json/JSONObject;)Lcom/appodeal/ads/segments/g;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/appodeal/ads/segments/h;->a:Ljava/util/TreeMap;

    .line 1
    iget-object v5, v3, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/segments/g;

    if-eqz v4, :cond_1

    .line 3
    iget-wide v4, v4, Lcom/appodeal/ads/segments/g;->f:J

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    .line 4
    :goto_1
    iput-wide v4, v3, Lcom/appodeal/ads/segments/g;->f:J

    .line 5
    iget-object v4, v3, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/segments/k;->a:J

    return-wide v0
.end method

.method public final c()Lcom/appodeal/ads/segments/k$a;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/segments/k;->b:Lcom/appodeal/ads/segments/k$a;

    return-object v0
.end method
