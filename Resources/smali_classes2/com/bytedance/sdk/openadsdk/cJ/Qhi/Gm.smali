.class public Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;
.super Ljava/lang/Object;
.source "OverSeaEventUploadImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;


# instance fields
.field public Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/tP<",
            "Lcom/bytedance/sdk/openadsdk/cJ/Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    return-void
.end method

.method private CJ(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;",
            ">;>;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 176
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 177
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

    .line 178
    invoke-interface {v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->ROR()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 180
    const-string v4, "app_log_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    .line 183
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;Ljava/util/List;)Ljava/util/HashMap;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->CJ(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/cJ/Tgh;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/cJ/Tgh;)Z

    move-result p0

    return p0
.end method

.method private Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/cJ/Tgh;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/cJ/Qhi;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/cJ/Tgh;",
            ")Z"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->ac(Ljava/util/List;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 170
    :cond_0
    iget p1, p2, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;->cJ:I

    const/16 v1, 0x190

    if-lt p1, v1, :cond_1

    iget p1, p2, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;->cJ:I

    const/16 p2, 0x1f4

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private ac(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/cJ/Qhi;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 155
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;

    .line 156
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ac()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 158
    const-string v0, "app_log_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public Qhi(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/cJ/Tgh;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/cJ/Qhi;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/cJ/Tgh;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;

    if-nez v0, :cond_0

    .line 194
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 201
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->gga()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    invoke-virtual {v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->cJ()Lorg/json/JSONObject;

    move-result-object v8

    .line 208
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 216
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->cJ()Lorg/json/JSONObject;

    move-result-object v10

    .line 217
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    invoke-virtual {v4, p1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    .line 218
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    const/4 v9, 0x1

    move-wide v6, v0

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 219
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    invoke-virtual {v6, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    .line 222
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->cJ(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 223
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    const/4 v9, 0x0

    move-wide v6, v0

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    move-result-object p1

    return-object p1

    .line 228
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->cJ()Lorg/json/JSONObject;

    move-result-object v8

    .line 231
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ac;->Qhi(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Ljava/util/List;Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;",
            ">;",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 49
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v0

    .line 57
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_2

    .line 59
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$1;

    const/4 v3, 0x7

    const-string v4, "upload_ad_event"

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$1;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;ILjava/lang/String;Ljava/util/List;Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;Ljava/util/List;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/cJ;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

    .line 116
    invoke-interface {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->ROR()Lorg/json/JSONObject;

    move-result-object v2

    .line 117
    new-instance v3, Lcom/bytedance/sdk/openadsdk/Gm/ac/ac$Qhi;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/ac/ac$Qhi;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 118
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;)V

    .line 121
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 122
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;

    const/4 v3, 0x6

    const-string v4, "upload_stats_event"

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm$2;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;ILjava/lang/String;Ljava/util/List;Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/cJ;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public cJ(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/cJ/Tgh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/Gm/ac/ac$Qhi;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/cJ/Tgh;"
        }
    .end annotation

    .line 240
    const-string v0, "stats_list"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;

    if-nez v1, :cond_0

    .line 241
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;

    :cond_0
    if-eqz p1, :cond_3

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ABk;->Qhi()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 246
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 248
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/Gm/ac/ac$Qhi;

    .line 251
    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/Gm/ac/ac$Qhi;->cJ:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 255
    const-string p1, "ts"

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 257
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    const-string v0, "req_sign"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Tgh;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/tP;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
