.class public Lcom/bytedance/sdk/openadsdk/core/model/Qhi;
.super Ljava/lang/Object;
.source "AdInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;

.field private volatile Gm:Z

.field private Qhi:Ljava/lang/String;

.field private ROR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/hm;",
            ">;"
        }
    .end annotation
.end field

.field private Sf:Ljava/lang/String;

.field private Tgh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;"
        }
    .end annotation
.end field

.field private WAv:Z

.field private ac:Ljava/lang/String;

.field private cJ:I

.field private fl:Z

.field private hm:J

.field private zc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ROR:Ljava/util/List;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Gm:Z

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/Qhi;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 123
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 124
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p0

    .line 125
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 126
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Qhi;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 312
    :cond_0
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;-><init>()V

    .line 313
    const-string v2, "choose_ui_data"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Lorg/json/JSONObject;)V

    .line 317
    :cond_1
    const-string v2, "multi_ad_style"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->cJ(I)V

    .line 318
    const-string v2, "creatives"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 320
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    .line 321
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 322
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 324
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Gm()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm(Z)V

    .line 325
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Ljava/util/List;)V

    .line 330
    :cond_4
    const-string v2, "is_choose_ad_original"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Z)V

    .line 331
    const-string v2, "request_id"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 334
    const-string v1, "AdInfo"

    const-string v2, "fromJson: "

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public CJ()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Gm()Z
    .locals 2

    .line 208
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->zc:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jWV()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->cJ:I

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->hm:J

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;)V
    .locals 1

    .line 176
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/fl;

    move-result-object p1

    .line 182
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi/ac/fl;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hm;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ROR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi:Ljava/lang/String;

    return-void
.end method

.method public Qhi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh:Ljava/util/List;

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    const-string v0, "tpl_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->WAv:Z

    return-void
.end method

.method public ROR()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->WAv:Z

    return v0
.end method

.method public Sf()Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;

    return-object v0
.end method

.method public Tgh()Z
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Sf()Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 150
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl:Z

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;)V

    .line 155
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl:Z

    return v0
.end method

.method public WAv()V
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Gm:Z

    return-void
.end method

.method public ac()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh:Ljava/util/List;

    return-object v0
.end method

.method public ac(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Sf:Ljava/lang/String;

    return-void
.end method

.method public cJ()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->cJ:I

    return v0
.end method

.method public cJ(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->zc:I

    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac:Ljava/lang/String;

    return-void
.end method

.method public fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hm()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Gm:Z

    return v0
.end method

.method public zc()Lorg/json/JSONObject;
    .locals 4

    .line 280
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 281
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Sf()Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 284
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;->cJ()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    const-string v3, "tpl_info"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v1, "choose_ui_data"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 291
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 292
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->mZ()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_1
    const-string v2, "creatives"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    :cond_2
    const-string v1, "is_choose_ad_original"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->WAv:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 298
    const-string v1, "multi_ad_style"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->zc:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    const-string v1, "request_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 302
    const-string v1, "AdInfo"

    const-string v2, "toJsonObj: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
