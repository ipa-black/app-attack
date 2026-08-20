.class public Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;
.super Ljava/lang/Object;
.source "UGenEndcardInflater.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/pA;
.implements Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$Qhi;


# static fields
.field protected static Qhi:I = 0x8


# instance fields
.field private ABk:Landroid/view/View;

.field private final CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private Gm:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ac;

.field private HzH:F

.field private MQ:Z

.field private ROR:Ljava/lang/String;

.field private Sf:Ljava/lang/String;

.field private Tgh:Ljava/lang/String;

.field private final WAv:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

.field private final ac:Landroid/app/Activity;

.field private cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;

.field private final fl:Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

.field private hm:Lorg/json/JSONObject;

.field private hpZ:F

.field private iMK:F

.field private kYc:J

.field private pA:F

.field private tP:J

.field private zc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->MQ:Z

    .line 56
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    .line 57
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->zc:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 59
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    .line 60
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)Lorg/json/JSONObject;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->hm:Lorg/json/JSONObject;

    return-object p0
.end method

.method private Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 13

    .line 182
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 184
    :try_start_0
    const-string v1, "down_x"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->iMK:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 185
    const-string v1, "down_y"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->pA:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 186
    const-string v1, "down_time"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->kYc:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 187
    const-string v1, "up_x"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->hpZ:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 188
    const-string v1, "up_y"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->HzH:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 189
    const-string v1, "up_time"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->tP:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi()Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    const-string v2, "height"

    const-string v3, "width"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v1, :cond_0

    .line 192
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 193
    new-array v8, v6, [I

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    .line 196
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 197
    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 198
    aget v1, v8, v4

    int-to-float v1, v1

    .line 199
    aget v8, v8, v5

    int-to-float v8, v8

    float-to-double v11, v9

    .line 200
    invoke-virtual {v7, v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    float-to-double v9, v10

    .line 201
    invoke-virtual {v7, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 202
    const-string v9, "left"

    float-to-double v10, v1

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 203
    const-string v1, "top"

    float-to-double v8, v8

    invoke-virtual {v7, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 204
    const-string v1, "rectInfo"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ABk:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 207
    new-array v7, v6, [I

    .line 208
    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 209
    const-string v1, "button_x"

    aget v8, v7, v4

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    const-string v1, "button_y"

    aget v7, v7, v5

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    const-string v1, "button_width"

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ABk:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    const-string v1, "button_height"

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ABk:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    const v7, 0x1020002

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 216
    new-array v7, v6, [I

    .line 217
    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 218
    const-string v8, "ad_x"

    aget v4, v7, v4

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string v4, "ad_y"

    aget v7, v7, v5

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    :cond_2
    const-string v1, "click_area_type"

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi()Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/component/cJ;->pA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v1, "brick_id"

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi()Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->iMK()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string p1, "endcard_id"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Tgh:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string p1, "click_scence"

    invoke-virtual {v0, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string p1, "user_behavior_type"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->MQ:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ac;

    if-eqz p1, :cond_4

    .line 229
    const-string v1, "endcard_type"

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ac;->Qhi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->zc:Ljava/lang/String;

    const-string v1, "click"

    invoke-static {p2, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$Qhi;)V

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->Qhi(Lcom/bytedance/adsdk/ugeno/core/pA;)V

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;->cJ()V

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    return-object p0
.end method

.method private cJ()V
    .locals 10

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Dq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->zc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->CJ()V

    return-void

    :cond_2
    if-ne v0, v3, :cond_3

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "play.google.com/store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    const-string v1, "?id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->zc:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->zc:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->zc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 176
    invoke-static {v0, v4, v6}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 175
    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;ZI)Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 8

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string v1, "net"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    const-string v3, "material is null"

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    const-string v3, "material ugen template is null"

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 72
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Sf:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Tgh:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ROR:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->mZ()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->hm:Lorg/json/JSONObject;

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;->Qhi()V

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Sf:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Tgh:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ROR:Ljava/lang/String;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$1;

    invoke-direct {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;)V

    const-string v2, "endcard"

    const-string v6, ""

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;)V

    return-void
.end method

.method public Qhi(Landroid/view/View;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ABk:Landroid/view/View;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;Landroid/view/MotionEvent;)V
    .locals 3

    .line 238
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->iMK:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->pA:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    .line 247
    :cond_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->MQ:Z

    return-void

    .line 251
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->hpZ:F

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->HzH:F

    .line 253
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->hpZ:F

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->iMK:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gez p1, :cond_3

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->HzH:F

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->pA:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    .line 254
    :cond_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->MQ:Z

    .line 256
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->tP:J

    :cond_5
    :goto_0
    return-void

    .line 240
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->kYc:J

    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->iMK:F

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->pA:F

    .line 243
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->MQ:Z

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)V
    .locals 3

    .line 124
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->ac()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez v0, :cond_3

    goto :goto_1

    .line 138
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->cJ()V

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    if-eqz v1, :cond_4

    .line 140
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->CJ()V

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    :cond_5
    :goto_1
    return-void

    .line 146
    :pswitch_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ac;

    if-eqz p1, :cond_7

    .line 147
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ac;->cJ()V

    goto :goto_2

    .line 127
    :pswitch_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    if-eqz p1, :cond_7

    .line 128
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->es()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 131
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->ac:Landroid/app/Activity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->zc:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x12bedc78 -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x6c816faf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ac;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ac;

    return-void
.end method
