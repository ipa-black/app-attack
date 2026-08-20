.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;
.super Lcom/bytedance/sdk/component/adexpress/fl/Qhi;
.source "WebViewRender.java"


# instance fields
.field private ABk:Ljava/lang/String;

.field private final EBS:Ljava/lang/Runnable;

.field private Gm:Lorg/json/JSONObject;

.field private HzH:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

.field private MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hm;

.field ROR:Lcom/bytedance/sdk/openadsdk/utils/Qhi;

.field private Sf:Landroid/content/Context;

.field private WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private hm:Ljava/lang/String;

.field private hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

.field private iMK:Lcom/bytedance/sdk/openadsdk/cJ/zc;

.field private kYc:Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

.field private final pA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;",
            ">;"
        }
    .end annotation
.end field

.field private final qMt:Lcom/bytedance/sdk/component/Sf/hm;

.field private volatile tP:I

.field private zc:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 2

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;)V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->pA:Ljava/util/Map;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->tP:I

    .line 85
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;

    const-string v1, "webviewrender_template"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->qMt:Lcom/bytedance/sdk/component/Sf/hm;

    .line 106
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->EBS:Ljava/lang/Runnable;

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Sf:Landroid/content/Context;

    .line 127
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->CJ()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hm:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 129
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->zc:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    .line 130
    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;->Qhi(Lcom/bytedance/sdk/component/adexpress/theme/Qhi;)V

    .line 131
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->HzH()V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->tP:I

    return p0
.end method

.method private HzH()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->kYc()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->tP:I

    .line 139
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->fl:Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    return-object p1
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->zc()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 179
    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/cJ;->CJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Gm:Lorg/json/JSONObject;

    return-object p1
.end method

.method private Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 261
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Sf:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Landroid/webkit/WebView;)V

    .line 262
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setVerticalScrollBarEnabled(Z)V

    .line 263
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x1

    .line 264
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->Qhi(Z)V

    .line 265
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->WAv()V

    .line 267
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const/16 v3, 0x183e

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/HzH;->Qhi(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMixedContentMode(I)V

    .line 272
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setJavaScriptEnabled(Z)V

    .line 273
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 275
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDomStorageEnabled(Z)V

    .line 276
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDatabaseEnabled(Z)V

    .line 277
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setAppCacheEnabled(Z)V

    .line 278
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setAllowFileAccess(Z)V

    .line 279
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setSupportZoom(Z)V

    .line 280
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBuiltInZoomControls(Z)V

    .line 281
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 282
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setUseWideViewPort(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 284
    const-string v0, "TTAD.WebViewRender"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V

    return-void
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lcom/bytedance/sdk/component/adexpress/cJ/Sf;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->HzH:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    return-object p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Ljava/lang/Runnable;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->EBS:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lorg/json/JSONObject;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Gm:Lorg/json/JSONObject;

    return-object p0
.end method

.method private ac(Z)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 388
    const-string v1, "adVisible"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 389
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    const-string v1, "expressAdShow"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method public static cJ(Ljava/lang/String;)Z
    .locals 1

    .line 418
    const-string v0, "banner_call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "banner_ad"

    .line 419
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "slide_banner_ad"

    .line 420
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "banner_ad_landingpage"

    .line 421
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->HzH()V

    return-void
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->kYc()V

    return-void
.end method

.method private kYc()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->tP:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ABk:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDisplayZoomControls(Z)V

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ABk:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lB;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ABk()V

    .line 162
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Sf:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    const/4 v2, 0x1

    .line 163
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->iMK()V

    .line 165
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->tP:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public ABk()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->kYc:Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    :cond_0
    return-void
.end method

.method public CJ()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ()V

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Gm()V

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->iMK:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac(Z)V

    .line 314
    :cond_2
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->CJ()V

    .line 315
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->EBS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->pA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object v0
.end method

.method public Qhi(I)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 408
    :try_start_0
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    const-string v1, "themeChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->HzH:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    .line 246
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->qMt:Lcom/bytedance/sdk/component/Sf/hm;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 3

    .line 426
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    .line 428
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ:Z

    if-nez p1, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->cJ()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public ROR()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    const-string v1, "expressWebviewRecycle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public Sf()V
    .locals 3

    .line 335
    const-string v0, "expressShow"

    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Sf()V

    .line 339
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-nez v1, :cond_0

    return-void

    .line 343
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    .line 344
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 345
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public Tgh()V
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected WAv()V
    .locals 1

    .line 237
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->WAv()V

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ROR:Lcom/bytedance/sdk/openadsdk/utils/Qhi;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->cJ(Lcom/bytedance/sdk/component/adexpress/Qhi;)Z

    :cond_0
    return-void
.end method

.method public cJ(I)V
    .locals 1

    .line 375
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->CJ:I

    if-ne p1, v0, :cond_0

    return-void

    .line 378
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->CJ:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 379
    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac(Z)V

    return-void
.end method

.method protected hm()V
    .locals 1

    .line 230
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->hm()V

    .line 231
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/pA;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/pA;->fl()Lcom/bytedance/sdk/openadsdk/utils/Qhi;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ROR:Lcom/bytedance/sdk/openadsdk/utils/Qhi;

    .line 232
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi;)V

    return-void
.end method

.method public hpZ()Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    return-object v0
.end method

.method public iMK()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundResource(I)V

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    .line 215
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/zc;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/cJ/zc;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->iMK:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->iMK:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->zc:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;)V

    .line 219
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hm;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Sf:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->iMK:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hm;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/cJ/zc;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hm;

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hm;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->iMK:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/cJ/zc;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/component/adexpress/fl/cJ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public pA()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hm;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hm;

    return-object v0
.end method

.method public zc()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 188
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 189
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 190
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hm:Ljava/lang/String;

    .line 192
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(I)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 193
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->bIO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/zc;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Gm:Lorg/json/JSONObject;

    .line 195
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 196
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->zc:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    .line 197
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    :cond_1
    :goto_0
    return-void
.end method
