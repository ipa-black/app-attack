.class public Lcom/bytedance/sdk/openadsdk/cJ/hm;
.super Ljava/lang/Object;
.source "ArbitrageLandingLog.java"


# instance fields
.field private final CJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private final ROR:Landroid/webkit/WebView;

.field private Sf:Ljava/lang/String;

.field private Tgh:I

.field private final ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private fl:I

.field private hm:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/webkit/WebView;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "landingpage"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Sf:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->cJ:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->ac:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->CJ:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 37
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->ROR:Landroid/webkit/WebView;

    return-void
.end method

.method private Qhi(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 83
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->fl:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Tgh:I

    .line 84
    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/hm;->cJ(Z)V

    if-eqz p1, :cond_1

    .line 86
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->fl:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Tgh:I

    :goto_1
    if-lez p1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private cJ(Z)V
    .locals 1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->ROR:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->fl:I

    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Tgh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 102
    const-string v0, "ArbitrageLandingLog"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public CJ(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Sf:Ljava/lang/String;

    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->WAv()Lcom/bytedance/sdk/openadsdk/core/model/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->Qhi()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/widget/cJ;->Qhi(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->CJ:Ljava/util/Map;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->fl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string p1, ""

    :cond_0
    move-object v3, p1

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Sf:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->fl:I

    const/4 v5, 0x2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Qhi(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Sf:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->fl:I

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->CJ:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->fl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->hm:J

    :cond_0
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 7

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->CJ:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->fl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const-string v0, ""

    :cond_0
    move-object v4, v0

    .line 76
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->fl:I

    if-lez v3, :cond_1

    .line 77
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Sf:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Qhi(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 53
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->hm:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 54
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Sf:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/hm;->fl:I

    invoke-static {v1, v2, v3, p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILjava/lang/String;F)V

    :cond_0
    return-void
.end method
