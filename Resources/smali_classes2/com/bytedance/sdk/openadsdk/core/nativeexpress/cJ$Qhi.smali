.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;
.super Ljava/lang/Object;
.source "BrandBannerController.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/fl;
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView$cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/cJ/fl<",
        "Landroid/view/View;",
        ">;",
        "Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView$cJ;"
    }
.end annotation


# instance fields
.field private ABk:I

.field private CJ:Ljava/lang/String;

.field private Gm:Ljava/lang/String;

.field Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ROR:I

.field private Sf:Landroid/widget/FrameLayout;

.field private final Tgh:I

.field private final WAv:I

.field private ac:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private cJ:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

.field private final fl:Landroid/content/Context;

.field private hm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private iMK:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

.field private pA:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

.field private zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;IILjava/lang/String;I)V
    .locals 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Gm:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 218
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 219
    const-string p5, "fullscreen_interstitial_ad"

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Gm:Ljava/lang/String;

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    .line 222
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Tgh:I

    .line 223
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->ROR:I

    .line 224
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->hm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/high16 p2, 0x40400000    # 3.0f

    .line 225
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->WAv:I

    .line 226
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->ABk:I

    .line 227
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Tgh()V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;)Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Gm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    return-object p0
.end method

.method private ROR()Landroid/view/View;
    .locals 4

    .line 276
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 278
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->hm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 280
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v2, 0x800053

    .line 281
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 283
    :cond_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->WAv:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 284
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->WAv:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 286
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private Sf()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;
    .locals 3

    .line 298
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ac;->cJ()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    .line 302
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;)V

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->hm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Gm:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView$cJ;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    return-object v0
.end method

.method private Tgh()V
    .locals 4

    .line 231
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Sf:Landroid/widget/FrameLayout;

    .line 232
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Tgh:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->ROR:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 236
    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Tgh:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 237
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->ROR:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 238
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 239
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Sf:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Sf()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Sf:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 244
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->ROR()Landroid/view/View;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Sf:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->hm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, -0x1000000

    .line 248
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;->setBackgroundColor(I)V

    .line 249
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->cBj:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 250
    sget-object v3, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;->Qhi(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 252
    :cond_1
    sget-object v2, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;->Qhi(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->hm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;)Landroid/content/Context;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public CJ()V
    .locals 2

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Sf:Landroid/widget/FrameLayout;

    .line 316
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    .line 317
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 318
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->iMK:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    .line 319
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->hm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;->zc()V

    .line 322
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public Qhi()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Qhi(II)V
    .locals 1

    .line 398
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->iMK:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    if-eqz p2, :cond_0

    .line 399
    const-string v0, "render fail"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/View;I)V
    .locals 0

    .line 379
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->pA:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz p1, :cond_0

    .line 380
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    const/16 v1, 0x6a

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->hm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez v0, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->iMK:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    .line 266
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->bM()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const-string v0, "dsp data is null"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;->hpZ()V

    return-void

    .line 262
    :cond_3
    :goto_0
    const-string v0, "material null"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->hm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->hm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->VnT()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Ljava/lang/String;Ljava/util/List;)V

    .line 347
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->pA:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/CQU;)V
    .locals 1

    .line 338
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    if-eqz v0, :cond_0

    .line 339
    check-cast p1, Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->CJ:Ljava/lang/String;

    return-void
.end method

.method public ac()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public cJ()Landroid/view/View;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Sf:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 374
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public f_()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->iMK:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;-><init>()V

    const/4 v1, 0x1

    .line 389
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(Z)V

    .line 390
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Tgh:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(D)V

    .line 391
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl:Landroid/content/Context;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->ROR:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->cJ(D)V

    .line 392
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->iMK:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Sf:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    :cond_0
    return-void
.end method

.method public fl()Landroid/view/View;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Sf:Landroid/widget/FrameLayout;

    return-object v0
.end method
