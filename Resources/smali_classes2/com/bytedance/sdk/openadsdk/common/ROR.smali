.class public Lcom/bytedance/sdk/openadsdk/common/ROR;
.super Ljava/lang/Object;
.source "LandingPageNewStyleManager.java"


# instance fields
.field private CJ:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private final Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private ROR:Lcom/bytedance/sdk/openadsdk/common/WAv;

.field private Sf:Lcom/bytedance/sdk/openadsdk/common/Sf;

.field private final Tgh:Ljava/lang/String;

.field private final ac:Landroid/content/Context;

.field private cJ:Landroid/widget/RelativeLayout;

.field private fl:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->ac:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 36
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->Tgh:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/ROR;->Tgh()V

    return-void
.end method

.method private static Qhi(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 6

    .line 44
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 47
    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/LandingPageBrowserNewTitleBar;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/common/LandingPageBrowserNewTitleBar;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance v2, Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;)V

    .line 52
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->MND:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->setId(I)V

    .line 53
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 54
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x3

    .line 55
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/iMK;->pv:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 56
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/LandingPageBrowserNewBottomBar;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/common/LandingPageBrowserNewBottomBar;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/common/LandingPageBrowserNewBottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    invoke-virtual {v0, v2, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private Tgh()V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->ac:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ROR;->Qhi(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->cJ:Landroid/widget/RelativeLayout;

    .line 70
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->MND:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->CJ:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->cJ:Landroid/widget/RelativeLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->pv:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 73
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/WAv;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->ac:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/common/WAv;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->ROR:Lcom/bytedance/sdk/openadsdk/common/WAv;

    .line 74
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/common/WAv;->ac()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->fl:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->cJ:Landroid/widget/RelativeLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Ri:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 77
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/Sf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->ac:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->CJ:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->Tgh:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/common/Sf;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->Sf:Lcom/bytedance/sdk/openadsdk/common/Sf;

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->CJ:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object v0
.end method

.method public Qhi()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->ROR:Lcom/bytedance/sdk/openadsdk/common/WAv;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/WAv;->Qhi()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->Sf:Lcom/bytedance/sdk/openadsdk/common/Sf;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Sf;->Qhi()V

    :cond_1
    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;ILcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->ROR:Lcom/bytedance/sdk/openadsdk/common/WAv;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/common/WAv;->Qhi(I)V

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->Sf:Lcom/bytedance/sdk/openadsdk/common/Sf;

    if-eqz p2, :cond_1

    .line 115
    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/common/Sf;->Qhi(Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;)V

    :cond_1
    return-void
.end method

.method public ac()Landroid/widget/ImageView;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->fl:Landroid/widget/ImageView;

    return-object v0
.end method

.method public cJ()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->ROR:Lcom/bytedance/sdk/openadsdk/common/WAv;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/WAv;->cJ()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->Sf:Lcom/bytedance/sdk/openadsdk/common/Sf;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Sf;->cJ()V

    :cond_1
    return-void
.end method

.method public fl()Landroid/view/View;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ROR;->cJ:Landroid/widget/RelativeLayout;

    return-object v0
.end method
