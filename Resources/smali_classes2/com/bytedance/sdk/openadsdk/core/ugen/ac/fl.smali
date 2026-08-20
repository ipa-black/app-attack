.class public Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;
.super Ljava/lang/Object;
.source "UGenSwiperEvent.java"


# instance fields
.field private ABk:Z

.field private CJ:Lcom/bytedance/adsdk/ugeno/component/cJ;

.field private Gm:Lorg/json/JSONObject;

.field private Qhi:I

.field private final ROR:Landroid/content/Context;

.field private final Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private final Tgh:Ljava/lang/String;

.field private WAv:Lcom/bytedance/sdk/openadsdk/core/widget/ac;

.field private ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

.field private cJ:I

.field private fl:Lcom/bytedance/adsdk/ugeno/component/cJ;

.field private final hm:Ljava/lang/String;

.field private hpZ:Lorg/json/JSONArray;

.field private iMK:Z

.field private pA:Z

.field private final zc:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi:I

    .line 43
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->cJ:I

    .line 47
    const-string v0, "UGenSwiperEvent"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Tgh:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->ROR:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 59
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->hm:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->zc:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->cJ:I

    return p1
.end method

.method private Qhi(Landroid/view/View;)Landroid/content/Context;
    .locals 0

    if-eqz p1, :cond_0

    .line 291
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 294
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->ROR:Landroid/content/Context;

    :cond_1
    return-object p1
.end method

.method private Qhi(I)V
    .locals 3

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_0
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catchall_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->hm:Ljava/lang/String;

    const-string v2, "carousel_show"

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private Qhi(Landroid/widget/TextView;I)V
    .locals 3

    .line 155
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 157
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p2, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 159
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;ZZZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(ZZZ)V

    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;Landroid/view/View;)V
    .locals 9

    .line 267
    const-string v0, "landingStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 268
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "fallback_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Landroid/view/View;)Landroid/content/Context;

    move-result-object v1

    .line 276
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->ROR:Landroid/content/Context;

    instance-of v2, p2, Landroid/app/Activity;

    .line 277
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->hm:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v6

    .line 278
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->hm:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->WAv:Lcom/bytedance/sdk/openadsdk/core/widget/ac;

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/kYc;->Qhi(Landroid/content/Context;ZLorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILandroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/ac;)V

    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    const-string v0, "clickInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Gm:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 228
    :catchall_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Gm:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Gm:Lorg/json/JSONObject;

    invoke-static {v3, p2}, Lcom/bytedance/adsdk/ugeno/Qhi/ac;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Gm:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    :goto_1
    return-void
.end method

.method private Qhi(ZZZ)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->CJ:Lcom/bytedance/adsdk/ugeno/component/cJ;

    if-nez v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->CJ:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->hpZ:Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 p1, 0x8

    .line 110
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    if-nez p1, :cond_7

    const/16 p1, 0x5a

    const/16 v2, 0xff

    if-eqz p2, :cond_3

    .line 116
    instance-of p2, v0, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 117
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Landroid/widget/TextView;I)V

    .line 119
    :cond_2
    instance-of p1, v1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 120
    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Landroid/widget/TextView;I)V

    return-void

    :cond_3
    if-eqz p3, :cond_5

    .line 123
    instance-of p2, v0, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 124
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Landroid/widget/TextView;I)V

    .line 126
    :cond_4
    instance-of p2, v1, Landroid/widget/TextView;

    if-eqz p2, :cond_7

    .line 127
    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Landroid/widget/TextView;I)V

    return-void

    .line 130
    :cond_5
    instance-of p1, v0, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 131
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Landroid/widget/TextView;I)V

    .line 133
    :cond_6
    instance-of p1, v1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 134
    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Landroid/widget/TextView;I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private Qhi(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 257
    :cond_1
    invoke-static {p3}, Lcom/bytedance/sdk/component/utils/hpZ;->Qhi(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 250
    :cond_2
    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/hpZ;->Qhi(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    return v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->ABk:Z

    return p1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(I)V

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->pA:Z

    return p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi:I

    return p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->iMK:Z

    return p1
.end method


# virtual methods
.method public CJ()Lorg/json/JSONObject;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Gm:Lorg/json/JSONObject;

    return-object v0
.end method

.method public Qhi()V
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->ABk:Z

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->iMK:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->pA:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(ZZZ)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/component/cJ<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 65
    const-string v0, "swiperLayout"

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->fl:Lcom/bytedance/adsdk/ugeno/component/cJ;

    .line 66
    instance-of v0, v0, Lcom/bytedance/adsdk/ugeno/cJ;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->zc:Lorg/json/JSONObject;

    const-string v1, "dpa_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->hpZ:Lorg/json/JSONArray;

    .line 69
    const-string v0, "swiperLeftArrow"

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    .line 70
    const-string v0, "swiperRightArrow"

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->CJ:Lcom/bytedance/adsdk/ugeno/component/cJ;

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->fl:Lcom/bytedance/adsdk/ugeno/component/cJ;

    check-cast p1, Lcom/bytedance/adsdk/ugeno/cJ;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/cJ;->Qhi(Lcom/bytedance/adsdk/ugeno/swiper/Qhi;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->WAv:Lcom/bytedance/sdk/openadsdk/core/widget/ac;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)Z
    .locals 8

    .line 185
    const-string v0, "fallback_url"

    const-string v1, "url"

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Gm:Lorg/json/JSONObject;

    .line 186
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->cJ:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    if-nez v2, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->ac()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 192
    const-string v5, "related_dpa_click"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 194
    const-string v5, "enableOpenExternalUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 195
    const-string v6, "landingStyle"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v5, :cond_3

    if-ne v6, v4, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->hpZ:Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 202
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->hpZ:Lorg/json/JSONArray;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->cJ:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/adsdk/ugeno/Qhi/ac;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->hpZ:Lorg/json/JSONArray;

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->cJ:I

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/adsdk/ugeno/Qhi/ac;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->hpZ:Lorg/json/JSONArray;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->cJ:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 210
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi()Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v3

    :catchall_0
    move-exception p1

    .line 215
    const-string v0, "UGenSwiperEvent"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v3
.end method

.method public ac()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->fl:Lcom/bytedance/adsdk/ugeno/component/cJ;

    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/cJ;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 170
    check-cast v0, Lcom/bytedance/adsdk/ugeno/cJ;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/cJ;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public cJ()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->fl:Lcom/bytedance/adsdk/ugeno/component/cJ;

    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/cJ;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 164
    check-cast v0, Lcom/bytedance/adsdk/ugeno/cJ;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/cJ;->Qhi(I)V

    :cond_0
    return-void
.end method
