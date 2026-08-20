.class public Lcom/bytedance/sdk/openadsdk/core/hpZ;
.super Ljava/lang/Object;
.source "InteractionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/hpZ$Qhi;
    }
.end annotation


# instance fields
.field private ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

.field private final CJ:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

.field private Gm:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

.field private final Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

.field private Sf:J

.field private final Tgh:Ljava/lang/String;

.field private final WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

.field private final ac:Landroid/content/Context;

.field private cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

.field private fl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

.field private iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

.field private final zc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->fl:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->CJ:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    .line 84
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ac:Landroid/content/Context;

    .line 86
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Tgh:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    .line 89
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result p2

    const/4 p5, 0x4

    if-ne p2, p5, :cond_0

    .line 90
    invoke-static {p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    :cond_0
    return-void
.end method

.method private CJ(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 3

    const/4 v0, 0x0

    .line 537
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 539
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_0

    .line 540
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/hpZ;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->cJ()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/hpZ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    return-object p0
.end method

.method private Qhi(Landroid/view/ViewGroup;)V
    .locals 4

    .line 402
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/hpZ$6;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/hpZ;Landroid/view/ViewGroup;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-static {p1, v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/es;->Qhi(Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/utils/es$cJ;Ljava/util/List;)V

    return-void
.end method

.method private Qhi(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 7

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "click_scence"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 226
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ac:Landroid/content/Context;

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 234
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Tgh:Ljava/lang/String;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v1, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    goto :goto_1

    .line 236
    :cond_2
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Tgh:Ljava/lang/String;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v1, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    .line 238
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Landroid/view/View;)V

    .line 239
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Gm:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V

    .line 240
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->cJ(Landroid/view/View;)V

    .line 241
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 242
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->CJ:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 243
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Ljava/util/Map;)V

    .line 244
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/hpZ$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/hpZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/hpZ;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    .line 254
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 255
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ac:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Tgh:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    goto :goto_2

    .line 257
    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ac:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Tgh:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    .line 259
    :goto_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Landroid/view/View;)V

    .line 260
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Gm:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V

    .line 261
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->cJ(Landroid/view/View;)V

    .line 262
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 263
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->CJ:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 264
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Ljava/util/Map;)V

    .line 265
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/hpZ$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/hpZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/hpZ;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    return-void
.end method

.method private Qhi(Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/EmptyView;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/bytedance/sdk/openadsdk/core/EmptyView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    if-nez v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/cJ/ac;)V

    .line 288
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/cJ/ac;)V

    .line 289
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-direct {p0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V

    .line 290
    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/EmptyView;Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Qhi(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    if-nez v1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/cJ/ac;)V

    .line 299
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-direct {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/cJ/ac;)V

    .line 300
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V

    .line 301
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Qhi(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;",
            ")V"
        }
    .end annotation

    .line 128
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    .line 129
    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/hpZ$Qhi;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-direct {p5, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/Sf;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 130
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->fl:Ljava/util/List;

    const/4 p1, 0x0

    .line 131
    invoke-direct {p0, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/cJ/ac;)V

    if-eqz p2, :cond_2

    .line 133
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->fl:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    if-eqz p5, :cond_0

    const v0, 0x1f000042

    .line 135
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p5, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 139
    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    :cond_2
    invoke-direct {p0, p4, p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/cJ/ac;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/EmptyView;Landroid/view/ViewGroup;)V
    .locals 1

    .line 377
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/hpZ$5;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/hpZ$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/hpZ;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$Qhi;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V
    .locals 2

    .line 345
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->CJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz v0, :cond_3

    .line 351
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V

    return-void

    .line 354
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 355
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object p1

    .line 356
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/hpZ$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/hpZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/hpZ;)V

    .line 364
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 367
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V

    :cond_3
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V

    return-void

    .line 312
    :cond_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/hpZ;Landroid/view/ViewGroup;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->cJ(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/hpZ;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->cJ(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/hpZ;ZLandroid/view/ViewGroup;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/cJ/ac;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Gm;->cJ(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Qhi(ZLandroid/view/ViewGroup;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ZRq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ROR(Z)V

    .line 432
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Tgh:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->up()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/Jma;)V

    :cond_0
    if-nez p1, :cond_1

    .line 434
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Sf:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Sf:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 437
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/sDy;->Qhi(Landroid/view/View;)F

    move-result p2

    invoke-virtual {v0, v4, v5, p2}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->Qhi(JF)V

    .line 438
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Tgh:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 439
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Sf:J

    return-void

    .line 441
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/sDy;->Qhi(Landroid/view/View;)F

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->Qhi(JF)V

    .line 442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Sf:J

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/hpZ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    return-object p0
.end method

.method private ac(Landroid/view/ViewGroup;)V
    .locals 10

    .line 488
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 489
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->fl:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "alpha"

    const-string v3, "height"

    const-string v4, "width"

    if-eqz v1, :cond_2

    .line 490
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 491
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->fl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 493
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 495
    :try_start_2
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 496
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 497
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    :catchall_0
    :try_start_3
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 503
    :cond_1
    const-string v5, "image_view"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p1, :cond_3

    .line 506
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 508
    :try_start_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 509
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 510
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    float-to-double v5, p1

    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 513
    :catchall_1
    :try_start_5
    const-string p1, "root_view"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Sf()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 517
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 519
    :try_start_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ac:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v2, v5

    float-to-double v6, v2

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 520
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ac:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v5

    float-to-double v4, p1

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 523
    :catchall_2
    :try_start_7
    const-string p1, "media_view"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 526
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v1, :cond_5

    .line 527
    const-string v2, "dynamic_show_type"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CQU()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 528
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lorg/json/JSONObject;

    .line 530
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Tgh:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 532
    const-string v0, "InteractionManager"

    const-string v1, "onShowFun json error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private cJ(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/core/EmptyView;"
        }
    .end annotation

    .line 164
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    .line 165
    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/hpZ$Qhi;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-direct {p5, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/Sf;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 166
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->fl:Ljava/util/List;

    .line 169
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->CJ(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object p5

    if-nez p5, :cond_0

    .line 171
    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ac:Landroid/content/Context;

    invoke-direct {p5, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 172
    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    :cond_0
    invoke-virtual {p5}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->Qhi()V

    .line 175
    invoke-virtual {p5, p3}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefClickViews(Ljava/util/List;)V

    if-eqz p2, :cond_3

    .line 177
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->fl:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_1

    const v0, 0x1f000042

    .line 179
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 183
    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_3
    invoke-virtual {p5, p4}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefCreativeViews(Ljava/util/List;)V

    return-object p5
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method private cJ()V
    .locals 6

    .line 451
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Sf:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Sf:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Tgh:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-static {v0, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 454
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Sf:J

    :cond_0
    return-void
.end method

.method private cJ(Landroid/view/ViewGroup;)V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/sDy;->Qhi(Landroid/view/View;)F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->Qhi(JF)V

    return-void
.end method

.method private cJ(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 463
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->CJ:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf()V

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->CJ:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Qhi(Z)V

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/sDy;->Qhi(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->Qhi(JF)V

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Sf:J

    .line 472
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ac(Landroid/view/ViewGroup;)V

    .line 473
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    if-eqz p1, :cond_3

    .line 474
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->CJ:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 476
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->PER()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 477
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/view/View;)V

    .line 479
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 480
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Qhi(J)V

    :cond_5
    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    .line 319
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    if-eqz v1, :cond_0

    .line 320
    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;)V

    .line 321
    move-object v1, p2

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;)V

    .line 323
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/hpZ$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/hpZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/hpZ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setJsbLandingPageOpenListener(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    if-eqz v0, :cond_3

    .line 339
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V

    .line 340
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/openadsdk/cJ/Sf;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->hm:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    return-object v0
.end method

.method public Qhi(Landroid/view/View;I)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 116
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;)V

    .line 118
    invoke-direct {p0, p1, p5}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 120
    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V
    .locals 1

    .line 191
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Gm:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->ABk:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V

    :cond_1
    return-void
.end method
