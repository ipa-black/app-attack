.class public Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;
.super Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;
.source "PAGFeedExpressView.java"


# instance fields
.field protected Gm:Ljava/lang/String;

.field protected final Sf:Landroid/content/Context;

.field protected WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field protected hm:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private zc:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 41
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;IZ)V

    .line 38
    const-string p2, "embeded_ad"

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Gm:Ljava/lang/String;

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->zc:Z

    .line 43
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Sf(I)V

    .line 44
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)V

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Sf:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->hm:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Qhi()V

    .line 48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->cJ()V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/core/hpZ;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    return-object p0
.end method

.method private Qhi(FF)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Sf:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p1

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Sf:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p2

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 127
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 128
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;FF)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Qhi(FF)V

    return-void
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->zc:Z

    return p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method private cJ()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    .line 60
    new-instance v1, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/cJ/ac;)V

    :cond_0
    return-void
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    return-object p0
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object v0
.end method

.method protected Qhi()V
    .locals 5

    .line 54
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Sf:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->hm:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Gm:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->ac()V

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->zc:Z

    return-void
.end method

.method protected ac()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    :cond_0
    return-void
.end method

.method public fl()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm()V

    :cond_0
    return-void
.end method
