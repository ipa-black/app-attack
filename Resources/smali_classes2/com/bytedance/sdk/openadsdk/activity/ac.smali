.class public Lcom/bytedance/sdk/openadsdk/activity/ac;
.super Lcom/bytedance/sdk/openadsdk/activity/ROR;
.source "EndCardScene.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;
.implements Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;


# static fields
.field private static ABk:Ljava/lang/String;

.field private static CJ:Ljava/lang/String;

.field private static ROR:Ljava/lang/String;

.field private static Tgh:Ljava/lang/String;

.field private static fl:Ljava/lang/String;


# instance fields
.field private HzH:Z

.field protected final Qhi:Lcom/bytedance/sdk/component/utils/CQU;

.field protected ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field protected cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

.field private hpZ:Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

.field private iMK:Landroid/os/Bundle;

.field private kYc:Ljava/lang/String;

.field private pA:I

.field private tP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/ROR;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 59
    new-instance p1, Lcom/bytedance/sdk/component/utils/CQU;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3, p0}, Lcom/bytedance/sdk/component/utils/CQU;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->pA:I

    .line 72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->iMK:Landroid/os/Bundle;

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/os/Bundle;)V

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->hpZ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 76
    const-string p2, "TTAD.EndCardScene"

    const-string p3, "onCreate: "

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->CQU()V

    return-void
.end method

.method private EBS()Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private NFd()Lorg/json/JSONObject;
    .locals 7

    .line 640
    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 641
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->MQ()J

    move-result-wide v2

    long-to-int v2, v2

    .line 643
    :try_start_0
    const-string v3, "oversea_version_type"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 644
    const-string v3, "reward_name"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->MQ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    const-string v3, "reward_amount"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qMt()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 646
    const-string v3, "network"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    invoke-static {v5}, Lcom/bytedance/sdk/component/utils/hpZ;->ac(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 647
    const-string v3, "sdk_version"

    const-string v5, "6.2.0.6"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zn()I

    move-result v3

    .line 651
    const-string v5, "unKnow"

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 653
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_1

    .line 655
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac()Ljava/lang/String;

    move-result-object v5

    .line 657
    :cond_1
    :goto_0
    const-string v3, "user_agent"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    const-string v3, "extra"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->KW()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    const-string v3, "media_extra"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->tP:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    const-string v3, "video_duration"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 661
    const-string v3, "play_start_ts"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 662
    const-string v3, "play_end_ts"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 663
    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 664
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->kYc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
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

    .line 668
    const-string v2, "TTAD.EndCardScene"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/os/Bundle;)V
    .locals 8

    .line 121
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Dww()Landroid/app/Activity;

    move-result-object v6

    .line 122
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, v6

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/CQU;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;I)V

    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 123
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi()Z

    move-result p1

    iput-boolean p1, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput-object p0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->HzH()Lcom/bytedance/sdk/openadsdk/WAv/hm;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    .line 126
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 128
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    .line 129
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "init: mAdType = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/activity/ac;ZZ)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi(ZZ)Z

    move-result p0

    return p0
.end method

.method private Qhi(ZZ)Z
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "reward_verify"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 571
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "user_has_give_up_reward"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 574
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Sf(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    if-nez p2, :cond_2

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 581
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->CQU()V

    return v2

    .line 586
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_4

    .line 588
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA()V

    .line 590
    :cond_4
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;-><init>(Landroid/content/Context;)V

    .line 591
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    if-eqz p1, :cond_5

    .line 593
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/ac;->CJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/ac;->fl:Ljava/lang/String;

    .line 594
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/ac;->Tgh:Ljava/lang/String;

    .line 595
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    goto :goto_0

    .line 597
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ABk:Ljava/lang/String;

    .line 598
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/ac;->Tgh:Ljava/lang/String;

    .line 599
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    .line 601
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/ac$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ac$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ac;ZLcom/bytedance/sdk/openadsdk/core/widget/Qhi;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi$Qhi;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    move-result-object p1

    .line 635
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->show()V

    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method private hpZ()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Lcom/bytedance/sdk/component/utils/CQU;)V

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Gm()V

    return-void
.end method

.method private kYc()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->HzH:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->HzH:Z

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->zc:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;)V

    .line 149
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->qMt()V

    return-void
.end method

.method private qMt()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/ac$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ac;)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/ac$2;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ac$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ac;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/top/cJ;)V

    return-void
.end method


# virtual methods
.method public final CJ()V
    .locals 4

    .line 363
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->aP()V

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->wI()V

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Z)V

    .line 366
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gSh()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final CJ(Landroid/app/Activity;)V
    .locals 1

    .line 405
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->CJ(Landroid/app/Activity;)V

    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->sDy()V

    .line 410
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method public final Gm()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->iMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi()V

    return-void
.end method

.method public HzH()V
    .locals 1

    .line 521
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->HzH()V

    .line 522
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->bxS()V

    :cond_0
    return-void
.end method

.method protected MQ()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MND:Ljava/lang/String;

    return-object v0
.end method

.method public final Qhi()Landroid/view/View;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    return-object v0
.end method

.method public Qhi(I)V
    .locals 0

    return-void
.end method

.method public final Qhi(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 84
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->iMK:Landroid/os/Bundle;

    .line 85
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    .line 96
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->hpZ:Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 98
    const-string p2, "media_extra"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->tP:Ljava/lang/String;

    .line 99
    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->kYc:Ljava/lang/String;

    .line 101
    :try_start_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ROR:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    const-string p2, "tt_reward_msg"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ROR:Ljava/lang/String;

    .line 103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    const-string p2, "tt_msgPlayable"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->CJ:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    const-string p2, "tt_negtiveBtnBtnText"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->Tgh:Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    const-string p2, "tt_postiveBtnText"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ABk:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    const-string p2, "tt_postiveBtnTextPlayable"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->fl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 109
    const-string p2, "TTAD.EndCardScene"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->kYc()V

    .line 113
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Sf()V

    return-void
.end method

.method public Qhi(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final Qhi(Landroid/os/Message;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Landroid/os/Message;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V
    .locals 0

    .line 557
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    if-nez p1, :cond_1

    if-eq p2, p0, :cond_1

    .line 560
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Landroid/view/View;)V

    .line 563
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->kYc()V

    :cond_1
    return-void
.end method

.method public Qhi(JZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final Sf()V
    .locals 9

    .line 393
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->hpZ:Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->Qhi:Landroid/os/Bundle;

    const-string v1, "isSkip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->hpZ:Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->Qhi:Landroid/os/Bundle;

    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->hpZ:Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->Qhi:Landroid/os/Bundle;

    const-string v1, "isFromLandingPage"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 400
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->hpZ:Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    iget v8, v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->cJ:I

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi(ZZZLcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;I)V

    return-void
.end method

.method public final Tgh()V
    .locals 0

    .line 383
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Eh()V

    return-void
.end method

.method public final WAv()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a_()Z
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    return v0
.end method

.method public ac()V
    .locals 7

    .line 477
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "reward_verify"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 486
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->hpZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qMt()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->MQ()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v2, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi(ZILjava/lang/String;ILjava/lang/String;)V

    return-void

    .line 496
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->NFd()Lorg/json/JSONObject;

    move-result-object v0

    .line 497
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/ac$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/ac$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ac;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ac(Landroid/app/Activity;)V
    .locals 0

    .line 342
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->ac(Landroid/app/Activity;)V

    .line 343
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez p1, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->qMt()V

    return-void
.end method

.method public b_()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    return-object v0
.end method

.method public final cJ(Landroid/app/Activity;)V
    .locals 3

    .line 311
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->cJ(Landroid/app/Activity;)V

    .line 312
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->HzH()V

    .line 316
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    .line 317
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Eh:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ(Lcom/bytedance/sdk/component/utils/CQU;)V

    .line 319
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->EBS()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->rB()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Z)V

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->pA()V

    .line 324
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MQ()V

    .line 325
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ABk()V

    .line 327
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->cJ()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 328
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    .line 329
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->pA:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p1, v2, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(ZLcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Z)V

    .line 332
    :cond_3
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->pA:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->pA:I

    .line 333
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz p1, :cond_4

    .line 334
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->ROR()V

    .line 336
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Eh:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/component/utils/CQU;)V

    .line 337
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->tP()V

    :cond_5
    :goto_1
    return-void
.end method

.method public c_()V
    .locals 0

    .line 378
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->aP()V

    return-void
.end method

.method public fl()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Eh()V

    .line 532
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ()V

    return-void
.end method

.method public final fl(Landroid/app/Activity;)V
    .locals 0

    .line 415
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->fl(Landroid/app/Activity;)V

    .line 416
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez p1, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->MQ()V

    return-void
.end method

.method public final hm()V
    .locals 0

    return-void
.end method

.method public iMK()V
    .locals 5

    .line 451
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Tgh:I

    .line 453
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TKG()I

    move-result v1

    .line 454
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 455
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 458
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl()Z

    move-result v3

    .line 459
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_3
    if-ne v3, v1, :cond_4

    move v2, v0

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 472
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac()V

    :cond_5
    return-void
.end method

.method public pA()V
    .locals 1

    .line 676
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->pA()V

    .line 677
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->EBS()V

    return-void
.end method

.method public tP()Z
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Dww()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zc()V
    .locals 0

    .line 441
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac()V

    return-void
.end method
