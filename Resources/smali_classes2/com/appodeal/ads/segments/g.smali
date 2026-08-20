.class public final Lcom/appodeal/ads/segments/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lcom/appodeal/ads/segments/g;

.field public static i:J


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lorg/json/JSONObject;

.field public final d:[Lcom/appodeal/ads/segments/i;

.field public final e:I

.field public f:J

.field public final g:Lcom/appodeal/ads/storage/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/appodeal/ads/segments/g;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, -0x1

    const-string v3, "default"

    invoke-direct {v0, v2, v3, v1}, Lcom/appodeal/ads/segments/g;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V

    sput-object v0, Lcom/appodeal/ads/segments/g;->h:Lcom/appodeal/ads/segments/g;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appodeal/ads/segments/g;->f:J

    sget-object v0, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    iput-object v0, p0, Lcom/appodeal/ads/segments/g;->g:Lcom/appodeal/ads/storage/o;

    iput p1, p0, Lcom/appodeal/ads/segments/g;->a:I

    iput-object p2, p0, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    const-string p1, "settings"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    invoke-static {p3}, Lcom/appodeal/ads/segments/j;->a(Lorg/json/JSONObject;)[Lcom/appodeal/ads/segments/i;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/segments/g;->d:[Lcom/appodeal/ads/segments/i;

    const-string p1, "match_rule"

    const-string p2, ""

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appodeal/ads/segments/a;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/appodeal/ads/segments/g;->e:I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/appodeal/ads/segments/g;
    .locals 3

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appodeal/ads/segments/g;

    invoke-direct {v2, v0, v1, p0}, Lcom/appodeal/ads/segments/g;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/appodeal/ads/segments/g;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "-1"

    goto :goto_0

    .line 64
    :cond_0
    iget p0, p0, Lcom/appodeal/ads/segments/g;->a:I

    .line 65
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Interstitial:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Video:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Rewarded:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/segments/g;->f:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/appodeal/ads/segments/g;->f:J

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;D)Z
    .locals 13

    move-object v1, p0

    iget v0, v1, Lcom/appodeal/ads/segments/g;->e:I

    iget-object v2, v1, Lcom/appodeal/ads/segments/g;->d:[Lcom/appodeal/ads/segments/i;

    move-object v3, p1

    invoke-static {p1, v0, v2}, Lcom/appodeal/ads/segments/j;->a(Landroid/content/Context;I[Lcom/appodeal/ads/segments/i;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 1
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 2
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - not matching custom rules"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 3
    :cond_0
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v3, "disable"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 5
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 6
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - ad disabled"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 7
    :cond_1
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v3, "disable_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/appodeal/ads/segments/m;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\"%s\""

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 8
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 9
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - %s disabled"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 11
    :cond_3
    invoke-static {p2}, Lcom/appodeal/ads/segments/g;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v6, "impressions_per_session"

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    .line 13
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v6, "impressions_per_session"

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v6, v0

    .line 14
    sget-object v0, Lcom/appodeal/ads/utils/x;->l:Ljava/util/HashMap;

    invoke-static {}, Lcom/appodeal/ads/utils/x$a;->a()Lcom/appodeal/ads/utils/x;

    move-result-object v0

    .line 15
    iget-object v8, v0, Lcom/appodeal/ads/utils/x;->e:Lcom/appodeal/ads/utils/w;

    if-nez v8, :cond_4

    move-wide v9, v3

    goto :goto_1

    :cond_4
    monitor-enter v8

    .line 16
    :try_start_0
    iget-wide v9, v8, Lcom/appodeal/ads/utils/w;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    :goto_1
    cmp-long v0, v6, v9

    if-lez v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v8

    throw v2

    :cond_6
    :goto_2
    move v0, v5

    :goto_3
    if-nez v0, :cond_7

    .line 17
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 18
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 19
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - impression count per ad session exceeded"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 20
    :cond_7
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v6, "impression_interval"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v6, -0x1

    if-eqz v0, :cond_8

    const-string v7, "fullscreen"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_4

    :cond_8
    move v0, v6

    .line 21
    :goto_4
    invoke-static {p2}, Lcom/appodeal/ads/segments/g;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-lez v0, :cond_a

    iget-wide v7, v1, Lcom/appodeal/ads/segments/g;->f:J

    cmp-long v7, v7, v3

    if-lez v7, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/appodeal/ads/segments/g;->f:J

    sub-long/2addr v7, v9

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-ltz v0, :cond_9

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_6

    :cond_a
    :goto_5
    move v0, v5

    :goto_6
    if-nez v0, :cond_b

    .line 22
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 23
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 24
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - impression interval hasn\'t passed yet"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 25
    :cond_b
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v7, "impression_interval_global"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v7, "fullscreen"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v6, v0, 0x3e8

    .line 26
    :cond_c
    invoke-static {p2}, Lcom/appodeal/ads/segments/g;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-lez v6, :cond_e

    sget-wide v7, Lcom/appodeal/ads/segments/g;->i:J

    cmp-long v0, v7, v3

    if-lez v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/appodeal/ads/segments/g;->i:J

    sub-long/2addr v7, v9

    int-to-long v9, v6

    cmp-long v0, v7, v9

    if-ltz v0, :cond_d

    goto :goto_7

    :cond_d
    move v0, v2

    goto :goto_8

    :cond_e
    :goto_7
    move v0, v5

    :goto_8
    if-nez v0, :cond_f

    .line 27
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 28
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 29
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - global impression interval hasn\'t passed yet"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 30
    :cond_f
    :try_start_1
    invoke-static {p2}, Lcom/appodeal/ads/segments/g;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v6, "impressions_per_period"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/appodeal/ads/segments/g;->e()Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-string v9, "period"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    move v9, v2

    move v10, v9

    :goto_9
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_12

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-ltz v11, :cond_11

    add-int/lit8 v10, v10, 0x1

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_12
    const-string v6, "amount"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v10, v0, :cond_13

    goto :goto_a

    :cond_13
    move v0, v2

    goto :goto_b

    :catch_0
    :cond_14
    :goto_a
    move v0, v5

    :goto_b
    if-nez v0, :cond_15

    .line 31
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 32
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 33
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - impression count per period exceeded"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 34
    :cond_15
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v6, "price_floor"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_16

    invoke-static {p2}, Lcom/appodeal/ads/segments/m;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    :cond_16
    cmpl-double v0, p3, v6

    if-ltz v0, :cond_17

    move v0, v5

    goto :goto_c

    :cond_17
    move v0, v2

    :goto_c
    if-nez v0, :cond_18

    .line 35
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 36
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {p2}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - %s impression eCPM $%s lower than price floor"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 38
    :cond_18
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v6, "interstitial_type"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    sget-object v6, Lcom/appodeal/ads/segments/g$a;->a:[I

    invoke-virtual {p2}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v5, :cond_1a

    const/4 v7, 0x2

    if-eq v6, v7, :cond_19

    goto :goto_e

    :cond_19
    const-string v6, "video"

    goto :goto_d

    :cond_1a
    const-string v6, "static"

    :goto_d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f

    :cond_1b
    :goto_e
    move v0, v5

    :goto_f
    if-nez v0, :cond_1c

    .line 39
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 40
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 41
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - interstitial type disabled"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 42
    :cond_1c
    sget-object v0, Lcom/appodeal/ads/utils/x;->l:Ljava/util/HashMap;

    invoke-static {}, Lcom/appodeal/ads/utils/x$a;->a()Lcom/appodeal/ads/utils/x;

    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/appodeal/ads/utils/x;->f:Ljava/lang/Long;

    .line 44
    iget-object v6, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v7, "disabled_until"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1d

    const-string v7, "time_since_first_launch"

    invoke-virtual {v6, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_10

    :cond_1d
    move-wide v6, v3

    :goto_10
    if-eqz v0, :cond_1f

    cmp-long v8, v6, v3

    if-eqz v8, :cond_1f

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v0, v8, v6

    if-ltz v0, :cond_1e

    goto :goto_11

    :cond_1e
    move v0, v2

    goto :goto_12

    :cond_1f
    :goto_11
    move v0, v5

    :goto_12
    if-nez v0, :cond_20

    .line 46
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 47
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 48
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - time from first ad session launch not passed"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 49
    :cond_20
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v6, "disabled_until"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v6, "app_session_time"

    invoke-virtual {v0, v6, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_13

    :cond_21
    move-wide v6, v3

    .line 50
    :goto_13
    invoke-static {}, Lcom/appodeal/ads/utils/x$a;->a()Lcom/appodeal/ads/utils/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->i()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-ltz v0, :cond_22

    move v0, v5

    goto :goto_14

    :cond_22
    move v0, v2

    :goto_14
    if-nez v0, :cond_23

    .line 51
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 52
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 53
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - time from ad session start not passed"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 54
    :cond_23
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v6, "disabled_until"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string v6, "app_session_count"

    invoke-virtual {v0, v6, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_15

    :cond_24
    move-wide v6, v3

    .line 55
    :goto_15
    invoke-static {}, Lcom/appodeal/ads/utils/x$a;->a()Lcom/appodeal/ads/utils/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->g()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-ltz v0, :cond_25

    move v0, v5

    goto :goto_16

    :cond_25
    move v0, v2

    :goto_16
    if-nez v0, :cond_26

    .line 56
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 57
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 58
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - ad sessions count not passed"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    .line 59
    :cond_26
    iget-object v0, v1, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v6, "disabled_until"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v6, "app_overall_time"

    invoke-virtual {v0, v6, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 60
    :cond_27
    invoke-static {}, Lcom/appodeal/ads/utils/x$a;->a()Lcom/appodeal/ads/utils/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->f()J

    move-result-wide v6

    cmp-long v0, v6, v3

    if-ltz v0, :cond_28

    move v0, v5

    goto :goto_17

    :cond_28
    move v0, v2

    :goto_17
    if-nez v0, :cond_29

    .line 61
    const-string v0, "Placement"

    const-string v3, "Can show"

    .line 62
    iget-object v4, v1, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 63
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\'%s\' - ad session overall running time not passed"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_18
    invoke-static {v0, v3, v4}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_29
    return v5
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()D
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v1, "reward"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v3, "amount"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    const-string v1, "reward"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "currency"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lorg/json/JSONArray;
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/segments/g;->g:Lcom/appodeal/ads/storage/o;

    .line 1
    iget v1, p0, Lcom/appodeal/ads/segments/g;->a:I

    .line 2
    iget-object v0, v0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 3
    sget-object v2, Lcom/appodeal/ads/storage/b$a;->c:Lcom/appodeal/ads/storage/b$a;

    .line 4
    invoke-virtual {v0, v2}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/segments/g;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
