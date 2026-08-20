.class public Lcom/bytedance/sdk/openadsdk/common/cJ;
.super Ljava/lang/Object;
.source "ArbitrageLoadingStyle.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;


# instance fields
.field private ABk:Ljava/util/regex/Pattern;

.field private final CJ:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private Gm:Ljava/lang/String;

.field private HzH:Z

.field private MQ:I

.field private final Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private final ROR:Landroid/os/Handler;

.field private Sf:F

.field private Tgh:Ljava/lang/String;

.field private WAv:J

.field private ac:Landroid/webkit/WebView;

.field private final cJ:Z

.field private fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

.field private hm:I

.field private hpZ:J

.field private iMK:I

.field private final kYc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pA:Z

.field private tP:J

.field private final zc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;Z)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string p3, "landingpage"

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Tgh:Ljava/lang/String;

    .line 43
    new-instance p3, Lcom/bytedance/sdk/component/utils/CQU;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0, p0}, Lcom/bytedance/sdk/component/utils/CQU;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->ROR:Landroid/os/Handler;

    .line 49
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    .line 52
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->ABk:Ljava/util/regex/Pattern;

    const-wide/16 v0, -0x1

    .line 58
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->tP:J

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 64
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->CJ:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 65
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->cJ:Z

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->kYc:Ljava/util/List;

    .line 67
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi()V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/common/cJ;)Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    return-object p0
.end method

.method private CJ()V
    .locals 2

    .line 165
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl()V

    return-void

    .line 169
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->cJ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/cJ$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/cJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/common/cJ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/openadsdk/common/cJ;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->iMK:I

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/common/cJ;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->iMK:I

    return p1
.end method

.method private Qhi()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->CJ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->ac:Landroid/webkit/WebView;

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->CJ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getArbitrageLoadingView()Landroid/view/View;

    move-result-object v0

    .line 81
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    .line 85
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->IC()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->hm:I

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cJP()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Sf:F

    return-void
.end method

.method private Qhi(I)V
    .locals 2

    .line 206
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->cJ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/cJ$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/common/cJ$4;-><init>(Lcom/bytedance/sdk/openadsdk/common/cJ;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->ac()V

    return-void
.end method

.method private Qhi(ILandroid/webkit/WebView;)V
    .locals 3

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    .line 263
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 265
    :try_start_0
    const-string v1, "load_progress"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    const-string p1, "progress_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 267
    const-string p1, "arbi_current_url"

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :catchall_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Tgh:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private Qhi(II)Z
    .locals 2

    const/4 v0, 0x0

    if-lt p1, p2, :cond_2

    .line 251
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->kYc:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->MQ:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    return v0

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->kYc:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/common/cJ;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Tgh()Z

    move-result p0

    return p0
.end method

.method private ROR()I
    .locals 1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->ac:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/common/cJ;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Tgh:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/common/cJ;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Gm:Ljava/lang/String;

    return-object p0
.end method

.method private Sf()V
    .locals 6

    .line 274
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 276
    :try_start_0
    const-string v1, "loading_show_interval"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->tP:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 277
    const-string v1, "loading_show_timestamp"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->hpZ:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 278
    const-string v1, "arbi_current_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->ac:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Tgh:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/common/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method private Tgh()Z
    .locals 1

    .line 220
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->ROR()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/common/cJ;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->pA:Z

    return p0
.end method

.method private ac()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->ROR:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/common/cJ;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl()V

    return-void
.end method

.method private cJ()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->ROR:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 153
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->hm:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/common/cJ;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->CJ()V

    return-void
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/common/cJ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private fl()V
    .locals 3

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->pA:Z

    .line 180
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->WAv:J

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->hpZ:J

    .line 183
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Sf()V

    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->ac:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Gm:Ljava/lang/String;

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    if-nez v1, :cond_1

    return-void

    .line 190
    :cond_1
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;->Qhi()V

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Sf:F

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;->setAlpha(F)V

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/cJ$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/cJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/common/cJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->ac()V

    .line 201
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->cJ()V

    :cond_2
    return-void
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/common/cJ;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->WAv:J

    return-wide v0
.end method

.method static synthetic zc(Lcom/bytedance/sdk/openadsdk/common/cJ;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->hpZ:J

    return-wide v0
.end method


# virtual methods
.method public Qhi(Landroid/os/Message;)V
    .locals 1

    .line 237
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 238
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/MotionEvent;)V
    .locals 2

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->tP:J

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;I)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;->Qhi(I)V

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->HzH:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x1e

    .line 119
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(ILandroid/webkit/WebView;)V

    :cond_1
    const/16 v0, 0x32

    .line 122
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(ILandroid/webkit/WebView;)V

    :cond_2
    const/16 v0, 0x46

    .line 125
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(ILandroid/webkit/WebView;)V

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    if-eqz p1, :cond_4

    const/16 p1, 0x64

    if-ne p2, p1, :cond_4

    const/4 p1, 0x1

    .line 131
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(I)V

    :cond_4
    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->WAv()Lcom/bytedance/sdk/openadsdk/core/model/Tgh;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->Qhi()Ljava/util/List;

    move-result-object p1

    .line 98
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/widget/cJ;->Qhi(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->iMK:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->iMK:I

    .line 102
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->cJ()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/common/cJ$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/common/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/common/cJ;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Tgh()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->CJ()V

    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->Tgh:Ljava/lang/String;

    return-void
.end method

.method public ac(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->kYc:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 144
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->HzH:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->pA:Z

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->ROR()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->MQ:I

    return-void
.end method

.method public cJ(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 136
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl:Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 138
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(I)V

    :cond_0
    return-void
.end method
