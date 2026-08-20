.class Lcom/bytedance/sdk/openadsdk/component/reward/ROR;
.super Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;
.source "PAGInterstitialAdImpl.java"


# instance fields
.field private CJ:Z

.field private final Qhi:Landroid/content/Context;

.field private final ROR:Ljava/lang/String;

.field private Sf:Z

.field private Tgh:Z

.field private ac:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field private final fl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hm:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Tgh:Z

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    .line 79
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->CJ:Z

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/bxS;->Qhi()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->ROR:Ljava/lang/String;

    return-void
.end method

.method private Qhi(I)V
    .locals 2

    .line 263
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$2;

    const-string v1, "FullScreen_registerMultiProcessListener"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Tgh:Z

    return p0
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v1

    .line 119
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    const/4 p0, 0x5

    if-eq v1, p0, :cond_1

    const/16 p0, 0x21

    if-eq v1, p0, :cond_1

    const/4 p0, 0x6

    if-eq v1, p0, :cond_1

    const/16 p0, 0x13

    if-eq v1, p0, :cond_1

    const/16 p0, 0xc

    if-eq v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->ROR:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;)Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    return-object p0
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->CJ:Z

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Tgh:Z

    return-void
.end method

.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    .line 240
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 242
    const-string v0, "TTFullScreenVideoAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->hm:Z

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/aP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->hm:Z

    :cond_0
    return-void
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionCallback;)V
    .locals 1

    .line 102
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/ac/Qhi;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/ac/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    const/4 p1, 0x1

    .line 103
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi(I)V

    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/ac/Qhi;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/ac/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    const/4 p1, 0x1

    .line 97
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi(I)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 8

    const/4 v0, 0x0

    .line 129
    const-string v1, "TTFullScreenVideoAdImpl"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const-string p1, "showFullScreenVideoAd error1: activity is finishing"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->CJ()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh()Z

    move-result v2

    .line 138
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v3

    .line 139
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/ac/Qhi;->cJ()Z

    move-result v4

    const-string v5, "fullscreen_interstitial_ad"

    if-eqz v4, :cond_f

    .line 144
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 147
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v3, :cond_e

    .line 155
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    if-nez p1, :cond_5

    .line 160
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi:Landroid/content/Context;

    goto :goto_1

    :cond_5
    move-object v1, p1

    :goto_1
    if-nez v1, :cond_6

    .line 162
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    .line 164
    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v4

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->gT()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 165
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    .line 168
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 170
    :cond_8
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 171
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 172
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/bytedance/sdk/openadsdk/activity/TTInterstitialExpressActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 174
    :cond_9
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 177
    :cond_a
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 178
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/bytedance/sdk/openadsdk/activity/TTInterstitialActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 180
    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    :goto_2
    const-string v5, "start_show_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 186
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->CJ:Z

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->ROR:Ljava/lang/String;

    invoke-static {v4, p1, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;->Qhi(Landroid/content/Intent;Landroid/app/Activity;ZLcom/bytedance/sdk/openadsdk/core/model/Qhi;Ljava/lang/String;)V

    .line 187
    const-string p1, "is_verity_playable"

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Tgh:Z

    invoke-virtual {v4, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result p1

    if-nez p1, :cond_c

    .line 190
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object p1

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;)V

    .line 192
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    .line 195
    :cond_c
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$1;

    invoke-direct {p1, p0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ROR;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-static {v1, v4, p1}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/cJ$Qhi;)Z

    if-nez v2, :cond_d

    .line 222
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->CJ:Z

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZZ)V

    :cond_d
    return-void

    .line 156
    :cond_e
    :goto_3
    const-string p1, "materialMeta error "

    invoke-static {v3, v5, p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_f
    const-string p1, "showFullScreenVideoAd error2: not main looper"

    invoke-static {v3, v5, p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called in a child thread \u2014\u2014 TTFullScreenVideoAd.showFullScreenVideoAd"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_4
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Sf:Z

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/aP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/Double;)V

    const/4 p1, 0x1

    .line 295
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Sf:Z

    :cond_0
    return-void
.end method
