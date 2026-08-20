.class public Lcom/bytedance/sdk/openadsdk/activity/Tgh;
.super Lcom/bytedance/sdk/openadsdk/activity/Qhi;
.source "RewardAdScene.java"


# static fields
.field private static ABk:Ljava/lang/String;

.field private static HzH:Ljava/lang/String;

.field private static hpZ:Ljava/lang/String;

.field private static iMK:Ljava/lang/String;

.field private static pA:Ljava/lang/String;


# instance fields
.field private MQ:I

.field ROR:I

.field protected Tgh:I

.field protected fl:I

.field private kYc:Ljava/lang/String;

.field private tP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    const/4 p1, -0x1

    .line 82
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->MQ:I

    return-void
.end method

.method private NFd()Lorg/json/JSONObject;
    .locals 7

    .line 818
    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 819
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->MQ()J

    move-result-wide v2

    long-to-int v2, v2

    .line 821
    :try_start_0
    const-string v3, "oversea_version_type"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 822
    const-string v3, "reward_name"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->MQ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string v3, "reward_amount"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qMt()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 824
    const-string v3, "network"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    invoke-static {v5}, Lcom/bytedance/sdk/component/utils/hpZ;->ac(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 825
    const-string v3, "sdk_version"

    const-string v5, "6.2.0.6"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zn()I

    move-result v3

    .line 829
    const-string v5, "unKnow"

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 831
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_1

    .line 833
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac()Ljava/lang/String;

    move-result-object v5

    .line 835
    :cond_1
    :goto_0
    const-string v3, "user_agent"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    const-string v3, "extra"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->KW()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 837
    const-string v3, "media_extra"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->tP:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    const-string v3, "video_duration"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 839
    const-string v3, "play_start_ts"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Tgh:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 840
    const-string v3, "play_end_ts"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->fl:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 841
    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 842
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->kYc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 843
    const-string v2, "trans_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/bxS;->Qhi()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 846
    const-string v2, "TTAD.RewardAdScene"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/activity/Tgh;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->sDy()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/activity/Tgh;ZZ)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(ZZ)V

    return-void
.end method

.method private Qhi(ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "user_has_give_up_reward"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 732
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->sDy()V

    return-void

    .line 735
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Sf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 739
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->CQU()V

    return-void

    .line 742
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->sDy()V

    return-void

    .line 746
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "reward_verify"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 747
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 748
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->sDy()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 753
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->CQU()V

    return-void

    .line 756
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->sDy()V

    return-void

    .line 760
    :cond_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 762
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V

    if-eqz p1, :cond_6

    .line 764
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA()V

    .line 766
    :cond_6
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Dww()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;-><init>(Landroid/content/Context;)V

    .line 767
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    if-eqz p1, :cond_7

    .line 769
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ABk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->iMK:Ljava/lang/String;

    .line 770
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->pA:Ljava/lang/String;

    .line 771
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    goto :goto_0

    .line 773
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->hpZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->HzH:Ljava/lang/String;

    .line 774
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->pA:Ljava/lang/String;

    .line 775
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    .line 777
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Tgh;ZLcom/bytedance/sdk/openadsdk/core/widget/Qhi;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi$Qhi;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    move-result-object p1

    .line 814
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->show()V

    return-void
.end method

.method private sDy()V
    .locals 3

    .line 894
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 895
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 896
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->tP()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 897
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Gm()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    const/4 v1, 0x3

    .line 898
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(I)V

    .line 899
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->kYc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->CJ(I)V

    .line 901
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ac()Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi()Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 902
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bxS;->ac(I)V

    .line 903
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    const-string v1, "skip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Ljava/lang/String;Z)V

    .line 904
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 905
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(ZI)V

    .line 906
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hpZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->CQU()V

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 916
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v1

    .line 918
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Tgh(J)V

    .line 919
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->fl(J)V

    .line 921
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    return-void
.end method


# virtual methods
.method public EBS()V
    .locals 7

    .line 853
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "reward_verify"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 863
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->hpZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qMt()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->MQ()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v2, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(ZILjava/lang/String;ILjava/lang/String;)V

    return-void

    .line 871
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->NFd()Lorg/json/JSONObject;

    move-result-object v0

    .line 872
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/Tgh$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Tgh;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Qhi(I)V
    .locals 1

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    :cond_0
    return-void
.end method

.method protected Qhi(JJ)V
    .locals 4

    .line 630
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v0, :cond_0

    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->YB:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr p1, v0

    .line 635
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->MQ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 636
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Tgh:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->MQ:I

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    return-void

    :cond_2
    const-wide/16 v0, 0x7530

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    const-wide/16 v0, 0x6978

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 647
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    return-void

    :cond_3
    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    .line 652
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->MQ:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    .line 654
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    :cond_4
    return-void
.end method

.method public Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 96
    const-string p2, "media_extra"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->tP:Ljava/lang/String;

    .line 97
    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->kYc:Ljava/lang/String;

    .line 99
    :try_start_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->hpZ:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    const-string p2, "tt_reward_msg"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->hpZ:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    const-string p2, "tt_msgPlayable"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ABk:Ljava/lang/String;

    .line 102
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    const-string p2, "tt_negtiveBtnBtnText"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->pA:Ljava/lang/String;

    .line 103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    const-string p2, "tt_postiveBtnText"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->HzH:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    const-string p2, "tt_postiveBtnTextPlayable"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->iMK:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 107
    const-string p2, "TTAD.RewardAdScene"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public Qhi(JZ)Z
    .locals 11

    .line 268
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;-><init>()V

    .line 275
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->cJ()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 276
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->hm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "dynamic_show_type"

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 282
    :catch_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 285
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Tgh;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    move-wide v6, p1

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    div-long/2addr p2, v1

    long-to-int p2, p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Tgh:I

    :cond_2
    return p1

    .line 452
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;-><init>()V

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->Qhi(JF)V

    .line 454
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Tgh()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 455
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Tgh;)V

    .line 616
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    .line 617
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    if-eqz v3, :cond_4

    .line 618
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    .line 623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    div-long/2addr p2, v1

    long-to-int p2, p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Tgh:I

    :cond_5
    return p1
.end method

.method protected ROR()V
    .locals 1

    .line 666
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Eh()V

    .line 667
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->WAv()V

    :cond_0
    return-void
.end method

.method protected a_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected ac()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/Tgh$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Tgh;)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Tgh;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/top/cJ;)V

    return-void
.end method

.method public b_()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "rewarded_video"

    return-object v0
.end method

.method protected cJ()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v1, 0x0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getSkipText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    return-void
.end method

.method public c_()V
    .locals 0

    .line 661
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->aP()V

    return-void
.end method

.method public iMK()V
    .locals 8

    .line 688
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 696
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Tgh:I

    .line 697
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->zc(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->aP()D

    move-result-wide v4

    .line 702
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    int-to-double v6, v1

    div-double/2addr v6, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    int-to-double v0, v0

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_5

    :goto_0
    move v2, v3

    goto :goto_2

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TKG()I

    move-result v1

    .line 707
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc()I

    move-result v4

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 708
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 711
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl()Z

    move-result v1

    .line 712
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    move v2, v0

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 726
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    :cond_6
    return-void
.end method

.method public zc()V
    .locals 0

    .line 683
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    return-void
.end method
