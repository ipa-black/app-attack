.class public Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;
.super Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;
.source "TTNativeAdImpl.java"


# instance fields
.field protected CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

.field protected Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

.field protected ROR:Ljava/lang/String;

.field private Sf:Z

.field protected Tgh:I

.field protected final ac:Landroid/content/Context;

.field protected final cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field protected fl:I

.field private hm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;IZ)V
    .locals 7

    .line 54
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;-><init>()V

    if-nez p2, :cond_0

    .line 56
    const-string v0, "materialMeta can\'t been null"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    .line 58
    :cond_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->ac:Landroid/content/Context;

    .line 60
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->fl:I

    .line 61
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Tgh:I

    .line 62
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->ROR:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 64
    new-instance p4, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->ROR:Ljava/lang/String;

    invoke-direct {p4, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    .line 65
    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/hpZ;

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Qhi(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/hpZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    :cond_1
    return-void
.end method

.method private Qhi(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 114
    const-string p1, "embeded_ad"

    goto :goto_0

    .line 120
    :cond_0
    const-string p1, "interaction"

    goto :goto_0

    .line 117
    :cond_1
    const-string p1, "banner_ad"

    :goto_0
    return-object p1
.end method

.method private Qhi(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 77
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 81
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 84
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public Qhi(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 216
    const-string p1, "container can\'t been null"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 220
    const-string p1, "clickView can\'t been null"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void

    .line 223
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 224
    const-string p1, "clickViews size must been more than 1"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->ROR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    invoke-direct {p0, p3, p4}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Qhi(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    :cond_3
    move-object v4, p4

    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    .line 234
    invoke-interface {p6}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;->cJ()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 236
    new-instance p4, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;

    invoke-direct {p4, p0, p6}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm$1;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;)V

    invoke-virtual {p5, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;)V

    .line 259
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V

    return-void
.end method

.method protected Qhi(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->ROR:Ljava/lang/String;

    return-void
.end method

.method protected ROR()Z
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 136
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    return v1

    .line 140
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Tgh:I

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ac(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public Sf()Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    return-object v0
.end method

.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    .line 103
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 105
    const-string v0, "TTNativeAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeAdData()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;
    .locals 2

    .line 264
    new-instance v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/fl;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Sf()Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/fl;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;)V

    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->hm:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/aP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->hm:Z

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionCallback;",
            ")V"
        }
    .end annotation

    .line 209
    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 184
    const-string p1, "container can\'t been null"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 188
    const-string p1, "clickView can\'t been null"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void

    .line 191
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 192
    const-string p1, "clickViews size must been more than 1"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void

    .line 203
    :cond_2
    new-instance v6, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf;

    invoke-direct {v6, p5}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Sf;-><init>(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Qhi(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;)V

    return-void
.end method

.method public showPrivacyActivity()V
    .locals 0

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Sf:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/aP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/Double;)V

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Sf:Z

    :cond_0
    return-void
.end method
