.class public final Lcom/appodeal/ads/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/f5;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:D

.field public f:J

.field public g:I

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/Boolean;

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Lcom/appodeal/ads/e0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/d0;->l:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/d0;->o:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/d0;->p:Z

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Z)Lcom/appodeal/ads/d0;
    .locals 3

    new-instance v0, Lcom/appodeal/ads/d0;

    invoke-direct {v0}, Lcom/appodeal/ads/d0;-><init>()V

    iput-object p0, v0, Lcom/appodeal/ads/d0;->a:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appodeal/ads/d0;->b:Ljava/lang/String;

    iput-boolean p1, v0, Lcom/appodeal/ads/d0;->d:Z

    const-string p1, "status"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/appodeal/ads/d0;->c:Ljava/lang/String;

    const-string p1, "ecpm"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/appodeal/ads/d0;->e:D

    const-string p1, "exptime"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/appodeal/ads/d0;->f:J

    const-string p1, "tmax"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/appodeal/ads/d0;->g:I

    const-string p1, "async"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/appodeal/ads/d0;->h:Z

    .line 1
    const-string p1, "mediator"

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/appodeal/ads/n5;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lcom/appodeal/ads/d0;->i:Ljava/lang/String;

    .line 3
    const-string p1, "unit_name"

    invoke-static {p0, p1, v2}, Lcom/appodeal/ads/n5;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lcom/appodeal/ads/d0;->j:Ljava/lang/String;

    const-string p1, "impression_interval"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/appodeal/ads/d0;->k:I

    const-string p1, "mute"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lcom/appodeal/ads/d0;->l:Ljava/lang/Boolean;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/appodeal/ads/api/Stats$AdUnit;
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/api/Stats$AdUnit;->newBuilder()Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/appodeal/ads/d0;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setId(Ljava/lang/String;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/appodeal/ads/d0;->e:D

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setEcpm(D)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/appodeal/ads/d0;->d:Z

    .line 8
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setPrecache(Z)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/appodeal/ads/d0;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setStart(J)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/appodeal/ads/d0;->n:J

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setFinish(J)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/d0;->q:Lcom/appodeal/ads/e0;

    invoke-virtual {v1}, Lcom/appodeal/ads/e0;->a()Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->setResult(Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;)Lcom/appodeal/ads/api/Stats$AdUnit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Stats$AdUnit$Builder;->build()Lcom/appodeal/ads/api/Stats$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/appodeal/ads/d0;->e:D

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/d0;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/d0;->p:Z

    iput-wide p1, p0, Lcom/appodeal/ads/d0;->n:J

    :cond_0
    return-void
.end method

.method public final a(Lcom/appodeal/ads/e0;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/d0;->q:Lcom/appodeal/ads/e0;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/d0;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/d0;->d:Z

    return-void
.end method

.method public final b(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/d0;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/d0;->o:Z

    iput-wide p1, p0, Lcom/appodeal/ads/d0;->m:J

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/d0;->n:J

    return-wide v0
.end method

.method public final getAdUnitName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d0;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getEcpm()D
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/d0;->e:D

    return-wide v0
.end method

.method public final getExpTime()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/d0;->f:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionInterval()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/d0;->k:I

    return v0
.end method

.method public final getJsonData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d0;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getLoadingTimeout()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/d0;->g:I

    return v0
.end method

.method public final getMediatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d0;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestResult()Lcom/appodeal/ads/e0;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d0;->q:Lcom/appodeal/ads/e0;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final isAsync()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/d0;->h:Z

    return v0
.end method

.method public final isMuted()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d0;->l:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPrecache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/d0;->d:Z

    return v0
.end method
