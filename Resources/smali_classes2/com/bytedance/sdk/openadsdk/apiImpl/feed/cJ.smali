.class public Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;
.super Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;
.source "PAGFeedNativeVideoAdImpl.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/CJ/fl$ac;
.implements Lcom/bykv/vk/openvk/component/video/api/CJ/fl$fl;
.implements Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi$Qhi;


# instance fields
.field private ABk:J

.field private Gm:Z

.field private Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;

.field private WAv:Z

.field private final hm:Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;

.field private zc:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;IZ)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->WAv:Z

    .line 31
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Gm:Z

    .line 37
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->fl:I

    .line 38
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->zc:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 39
    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->hm:Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;

    .line 40
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Tgh:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Qhi(I)V

    .line 41
    const-string p1, "embeded_ad"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Qhi(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;Lcom/bytedance/sdk/openadsdk/core/hpZ;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;IZ)V

    .line 30
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->WAv:Z

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Gm:Z

    .line 47
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    .line 48
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    .line 49
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->fl:I

    .line 50
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->zc:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 51
    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->hm:Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;

    .line 52
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Tgh:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Qhi(I)V

    .line 53
    const-string p1, "embeded_ad"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Qhi(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p5, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;)Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->hm:Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;

    return-object p0
.end method

.method private Qhi(I)V
    .locals 4

    .line 124
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cJ(I)I

    move-result p1

    .line 125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/hpZ;->ac(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 128
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->WAv:Z

    .line 129
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Gm:Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 130
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->WAv:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    .line 134
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->fl(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Tgh(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 135
    :cond_2
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->WAv:Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v2, p1, :cond_4

    .line 139
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->WAv:Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    if-ne v2, p1, :cond_6

    .line 141
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Tgh(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 142
    :cond_5
    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Gm:Z

    .line 146
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz p1, :cond_7

    .line 147
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->WAv:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public Qhi(II)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;->Qhi(II)V

    :cond_0
    return-void
.end method

.method public Qhi(JJ)V
    .locals 0

    .line 201
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->ABk:J

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;

    return-void
.end method

.method protected Qhi(Ljava/lang/String;)V
    .locals 0

    .line 226
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/hm;->Qhi(Ljava/lang/String;)V

    return-void
.end method

.method public Tgh()Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->hm:Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;

    return-object v0
.end method

.method public e_()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public fl()Landroid/view/View;
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->ac:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const-string v2, "getAdView null"

    if-eqz v0, :cond_5

    .line 63
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->ac:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi()Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 64
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->Qhi(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz v4, :cond_1

    .line 67
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;)V

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->getNativeVideoController()Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V

    .line 73
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;)V

    .line 77
    :cond_2
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdClickListenerTTNativeAd(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 78
    new-instance v3, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setAdCreativeClickListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$Qhi;)V

    .line 86
    new-instance v3, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$cJ;)V

    .line 96
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdLoadListener(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$fl;)V

    .line 97
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$ac;)V

    .line 98
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->fl:I

    const/4 v4, 0x5

    if-ne v4, v3, :cond_4

    .line 99
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->WAv:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->zc:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    move-result v3

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Gm:Z

    :goto_0
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    goto :goto_1

    .line 101
    :cond_4
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Gm:Z

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 103
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Tgh:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ac(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 106
    const-string v3, ""

    invoke-static {v3, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v1

    .line 109
    :goto_2
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->Qhi(JZZ)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    return-object v0

    .line 111
    :cond_7
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    return-object v1
.end method

.method public h_()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;->cJ(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public i_()V
    .locals 0

    return-void
.end method

.method public j_()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;->ac(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public showPrivacyActivity()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->zc()V

    :cond_0
    return-void
.end method
