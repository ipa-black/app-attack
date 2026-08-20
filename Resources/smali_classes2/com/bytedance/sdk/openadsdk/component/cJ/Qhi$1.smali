.class Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;
.super Ljava/lang/Object;
.source "FeedAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/fl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/common/fl;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic cJ:Landroid/content/Context;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/common/fl;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/Jma;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->fl:Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/common/fl;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->cJ:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;
    .locals 2

    .line 139
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 148
    new-instance v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/Qhi;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0

    .line 144
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-object v0
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/common/fl;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/common/fl;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 6

    .line 68
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 69
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p1

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 74
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->DaO()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->cJ:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/common/fl;

    instance-of v4, v4, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    if-eqz v4, :cond_2

    .line 77
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v3

    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->fl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->NBs()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 87
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh(I)V

    .line 89
    :cond_3
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ki()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 90
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ki()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh(I)V

    .line 94
    :cond_4
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v3

    invoke-interface {v3}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object v3

    .line 96
    const-string v4, "material_meta"

    invoke-virtual {v3, v4, v2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v4, "ad_slot"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3, v4, v5}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 98
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V

    .line 101
    :cond_5
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->cJ:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    goto/16 :goto_0

    .line 105
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/common/fl;

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 109
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->ac()J

    move-result-wide v3

    .line 111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;J)V

    .line 115
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/common/fl;

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    if-eqz v1, :cond_8

    .line 116
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 120
    :cond_8
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->fl()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->fl()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 121
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void

    .line 124
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/common/fl;

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/common/fl;->onError(ILjava/lang/String;)V

    .line 126
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 127
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    :cond_a
    return-void

    .line 130
    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/common/fl;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/common/fl;->onError(ILjava/lang/String;)V

    .line 132
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 133
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void
.end method
