.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;
.super Ljava/lang/Object;
.source "VastEndCardManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/WAv/Sf;


# instance fields
.field private CJ:Landroid/widget/ImageView;

.field private final Qhi:Landroid/app/Activity;

.field private ROR:Z

.field private volatile Sf:Z

.field private Tgh:Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;

.field private WAv:I

.field private ac:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private fl:Z

.field private final hm:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->hm:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 66
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 67
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi:Landroid/app/Activity;

    return-void
.end method

.method private CJ()V
    .locals 2

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->CJ:Landroid/widget/ImageView;

    return-object p0
.end method

.method private Qhi(II)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->CJ:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/content/Context;)I

    move-result v1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, v0

    int-to-float v2, v1

    div-float v2, p2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    mul-float/2addr p2, p1

    float-to-double p1, p2

    .line 266
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int v0, p1

    goto :goto_0

    :cond_1
    div-float/2addr p2, p1

    float-to-double p1, p2

    .line 269
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int v1, p1

    .line 272
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->CJ:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 273
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 274
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p2, 0x11

    .line 275
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 276
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->CJ:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->CJ:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Tgh:Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->CJ:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Tgh:Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private Qhi(ILjava/lang/String;)V
    .locals 7

    .line 147
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Sf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Sf:Z

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Gm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    const-string v0, ""

    :goto_0
    move-object v6, v0

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_2

    .line 156
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string p2, "load_vast_endcard_success"

    const/4 v0, 0x0

    invoke-static {p1, v6, p2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 160
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$3;

    const-string v3, "load_vast_endcard_fail"

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)V
    .locals 2

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setVerticalScrollBarEnabled(Z)V

    .line 226
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 229
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMixedContentMode(I)V

    const/4 v1, 0x1

    .line 231
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setJavaScriptEnabled(Z)V

    .line 232
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 233
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDomStorageEnabled(Z)V

    .line 234
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDatabaseEnabled(Z)V

    .line 235
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setAppCacheEnabled(Z)V

    .line 236
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setAllowFileAccess(Z)V

    .line 237
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setSupportZoom(Z)V

    .line 238
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBuiltInZoomControls(Z)V

    .line 239
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 240
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setUseWideViewPort(Z)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;ILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;Ljava/lang/String;)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ROR:Z

    return p1
.end method

.method private Qhi(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Tgh:Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;

    if-nez v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->ROR(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Tgh:Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->CJ()V

    return-void
.end method

.method private fl()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->g_()V

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDisplayZoomControls(Z)V

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 9

    .line 71
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Sf;)V

    .line 72
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->ROR()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->WAv:I

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 75
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$1;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v1

    const-string v2, "VAST_END_CARD"

    invoke-direct {v0, p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Tgh:Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->ac()Lcom/bytedance/sdk/openadsdk/core/ROR/ac;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->fl()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 84
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->fl:Z

    .line 85
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->hm:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Sf:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->CJ:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->cJ()I

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ac()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(II)V

    .line 87
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v2

    .line 88
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->cJ()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v2

    .line 89
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->ac()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/component/fl/Gm;->cJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/fl/Gm;->fl(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/fl/Gm;->CJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    const/4 v2, 0x2

    .line 92
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/component/fl/HzH;)V

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->hm:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    sget v2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->hm:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v1, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->fl()V

    .line 121
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->CJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 123
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->fl:Z

    .line 124
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->a_(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Tgh;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v5, v0

    goto :goto_0

    :cond_3
    move-object v5, v1

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    const-string v1, "UTF -8"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v6, "text/html"

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/component/widget/SSWebView;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public Qhi(I)V
    .locals 3

    .line 327
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->WAv:I

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->hm:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->hm(J)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-nez p1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->hm:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Sf(J)V

    .line 334
    :cond_1
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->WAv:I

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Tgh:Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/ac;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)Z
    .locals 3

    .line 288
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->fl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->CJ:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ROR:Z

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Tgh:Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->ac()Lcom/bytedance/sdk/openadsdk/core/ROR/ac;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 303
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v1

    goto :goto_1

    :cond_3
    const-wide/16 v1, -0x1

    .line 304
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->cJ(J)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public ac()Z
    .locals 3

    .line 338
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->fl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->CJ:Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return v2

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_2

    .line 346
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Tgh:Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Sf;->onClick(Landroid/view/View;)V

    return v2

    :cond_2
    return v1
.end method

.method public cJ()V
    .locals 1

    .line 317
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->cJ(Lcom/bytedance/sdk/openadsdk/WAv/Sf;)V

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/lG;->Qhi(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method
