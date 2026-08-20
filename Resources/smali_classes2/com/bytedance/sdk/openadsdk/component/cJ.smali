.class public Lcom/bytedance/sdk/openadsdk/component/cJ;
.super Lcom/bytedance/sdk/openadsdk/component/ac;
.source "AppOpenAdExpressManager.java"


# instance fields
.field private Gm:Z

.field private WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Qhi;IZLcom/bytedance/sdk/openadsdk/component/Sf/Qhi;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/component/ac;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Qhi;IZLcom/bytedance/sdk/openadsdk/component/Sf/Qhi;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/cJ;)Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/cJ;Landroid/view/ViewGroup;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/cJ;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->Gm:Z

    return p1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/cJ;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/ac;->cJ()V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/cJ;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi()V

    return-void
.end method


# virtual methods
.method public CJ()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->getDynamicShowType()I

    move-result v0

    return v0
.end method

.method public Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public Qhi()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->Qhi:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->hm:Lcom/bytedance/sdk/openadsdk/component/Sf/Qhi;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Sf/Qhi;Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/cJ$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/cJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/cJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    .line 116
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;)V

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->Qhi:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->hm:Lcom/bytedance/sdk/openadsdk/component/Sf/Qhi;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/Qhi/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Sf/Qhi;Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;)V

    .line 121
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/cJ$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/cJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/cJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/cJ$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/cJ$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/cJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/cJ/ac;)V

    return-void
.end method

.method public Qhi(IIZ)V
    .locals 2

    .line 153
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->Gm:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi(IIZ)V

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->Qhi(Ljava/lang/CharSequence;IIZ)V

    return-void
.end method

.method public Qhi(Landroid/view/ViewGroup;)V
    .locals 4

    .line 39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->Qhi:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->ROR:I

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Qhi/Qhi;->Qhi(Landroid/view/Window;I)Landroid/util/Pair;

    move-result-object p1

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 41
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ABk;->CJ()Z

    move-result v0

    const-string v1, "open_ad"

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tryDynamicNative: id is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->fl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 51
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->Qhi:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->setTopListener(Lcom/bytedance/sdk/openadsdk/component/Tgh/Qhi;)V

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->setExpressVideoListenerProxy(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    .line 54
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/cJ;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Sf(I)V

    .line 103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->CJ:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public ac()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/ac;->ac()V

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->Gm()V

    :cond_0
    return-void
.end method

.method public cJ()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->hm()V

    return-void
.end method
