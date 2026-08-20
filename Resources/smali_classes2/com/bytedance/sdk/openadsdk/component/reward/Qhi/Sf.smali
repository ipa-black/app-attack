.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;
.super Ljava/lang/Object;
.source "RewardFullPlayableManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/bytedance/sdk/openadsdk/WAv/Sf;


# static fields
.field private static final hm:Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;


# instance fields
.field private final ABk:Ljava/lang/String;

.field CJ:J

.field private CQU:Z

.field private Dww:Z

.field private EBS:Z

.field private final Gm:Landroid/app/Activity;

.field private HzH:I

.field private MQ:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

.field protected final Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

.field ROR:I

.field private Sf:Z

.field Tgh:I

.field private volatile WAv:Z

.field ac:Z

.field private volatile bxS:Z

.field cJ:Z

.field fl:I

.field private hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

.field private final iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field private kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

.field private final pA:Landroid/os/Handler;

.field private final pM:Lcom/bytedance/sdk/openadsdk/WAv/fl;

.field private qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

.field private tP:Z

.field private final zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hm:Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 4

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    .line 105
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ:Z

    .line 107
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac:Z

    const-wide/16 v2, 0x0

    .line 109
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CJ:J

    .line 111
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->fl:I

    .line 113
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Tgh:I

    .line 115
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ROR:I

    const/4 v0, 0x1

    .line 117
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH:I

    .line 121
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->tP:Z

    .line 998
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pM:Lcom/bytedance/sdk/openadsdk/WAv/fl;

    .line 138
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 139
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Gm:Landroid/app/Activity;

    .line 140
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ABk:Ljava/lang/String;

    .line 141
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method private CQU()Ljava/lang/String;
    .locals 13

    .line 441
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Eh()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->cJ()Ljava/lang/String;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->CJ()D

    move-result-wide v2

    .line 449
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->fl()I

    move-result v4

    .line 451
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 452
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 455
    :cond_1
    const-string v5, ""

    :goto_0
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v6

    .line 456
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac()Ljava/lang/String;

    move-result-object v7

    .line 457
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object v8

    .line 458
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->cJ()Ljava/lang/String;

    move-result-object v9

    .line 459
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dVA()Ljava/lang/String;

    move-result-object v10

    .line 460
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "appname="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "&stars="

    .line 462
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&comments="

    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&icon="

    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&downloading=true&id="

    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 466
    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&packageName="

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&downloadUrl="

    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&name="

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&orientation="

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "portrait"

    goto :goto_1

    :cond_2
    const-string v2, "landscape"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&apptitle="

    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private Dww()Z
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ls()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    const/4 v0, 0x1

    return v0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->ac()V

    return v1
.end method

.method private static EBS()Lcom/bytedance/sdk/openadsdk/hpZ/fl;
    .locals 3

    .line 322
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->Tgh()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "5g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "2g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 335
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->ROR:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    return-object v0

    .line 333
    :pswitch_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->fl:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    return-object v0

    .line 331
    :pswitch_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->CJ:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    return-object v0

    .line 329
    :pswitch_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->ac:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    return-object v0

    .line 327
    :pswitch_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->cJ:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    return-object v0

    .line 325
    :pswitch_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x675 -> :sswitch_4
        0x694 -> :sswitch_3
        0x6b3 -> :sswitch_2
        0x6d2 -> :sswitch_1
        0x37af15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Qhi(II)Landroid/os/Message;
    .locals 2

    .line 149
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x320

    .line 150
    iput v1, v0, Landroid/os/Message;->what:I

    .line 151
    iput p0, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 153
    iput p1, v0, Landroid/os/Message;->arg2:I

    :cond_0
    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    return-object p0
.end method

.method private Qhi(Landroid/content/Context;)V
    .locals 2

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;->Qhi(Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$Qhi;)V

    .line 558
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->tP:Z

    return p1
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->tP:Z

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-object p0
.end method

.method private bxS()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->YAV:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ABk:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic qMt()Lcom/bytedance/sdk/openadsdk/hpZ/fl;
    .locals 1

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->EBS()Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ABk()V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    :cond_0
    return-void
.end method

.method public CJ(I)I
    .locals 2

    .line 722
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ROR:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Tgh:I

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public CJ(Z)V
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    :cond_0
    return-void
.end method

.method public CJ()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ:Z

    return v0
.end method

.method public Gm()I
    .locals 1

    .line 729
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Tgh:I

    return v0
.end method

.method public HzH()Z
    .locals 1

    .line 1057
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->bxS:Z

    return v0
.end method

.method public MQ()Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    return-object v0
.end method

.method public Qhi()V
    .locals 6

    .line 171
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->EBS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->EBS:Z

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH:I

    .line 177
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->bxS()V

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Sf;)V

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Dww()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const/16 v1, 0x320

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Qhi(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ABk(Lcom/bytedance/sdk/openadsdk/core/model/tP;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public Qhi(I)V
    .locals 4

    .line 756
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->zc(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->zc(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->cJ()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 764
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi()I

    if-nez p1, :cond_2

    .line 767
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->cJ(Z)V

    .line 768
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(Z)V

    return-void

    .line 770
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->cJ(Z)V

    .line 771
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(Z)V

    return-void

    .line 776
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi(I)V

    .line 777
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi()I

    .line 778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    .line 781
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    .line 782
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->cJ(Z)V

    .line 783
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(Z)V

    return-void

    .line 785
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    .line 786
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->cJ(Z)V

    .line 787
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(Z)V

    :cond_5
    return-void
.end method

.method public Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 740
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TKG()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Tgh:I

    .line 742
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ROR:I

    return-void
.end method

.method public Qhi(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_0

    .line 826
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->fl(Z)V

    .line 827
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public Qhi(J)V
    .locals 2

    .line 881
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x384

    .line 882
    iput v1, v0, Landroid/os/Message;->what:I

    .line 883
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 884
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public Qhi(Landroid/webkit/DownloadListener;)V
    .locals 10

    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hm()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CQU()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 391
    :cond_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$6;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Gm:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v6

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 431
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->a_(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDisplayZoomControls(Z)V

    .line 433
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zc()Lcom/bytedance/sdk/openadsdk/cJ/zc;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/cJ/zc;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 434
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;Z)V
    .locals 6

    .line 194
    const-string v0, "PlayablePlugin_init"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->jPH:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 200
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hm:Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/Sf$Qhi;)V

    .line 203
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;Lcom/bytedance/sdk/openadsdk/WAv/Tgh;)V

    .line 236
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)V

    .line 243
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 245
    :try_start_0
    const-string v4, "cid"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v4, "log_extra"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-static {v4, v5, p1, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/hpZ/ac;Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    .line 248
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->bxS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Tgh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    .line 249
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    .line 250
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    .line 251
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    const-string v1, "sdkEdition"

    .line 252
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    .line 253
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->fl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    .line 254
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->CJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    .line 255
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    .line 256
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 257
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ABk(Lcom/bytedance/sdk/openadsdk/core/model/tP;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(J)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 258
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ABk(Lcom/bytedance/sdk/openadsdk/core/model/tP;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(J)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 259
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->CJ(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    .line 266
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 265
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-nez p2, :cond_2

    .line 266
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$4;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)V

    invoke-static {v0, v3, p2}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_2
    throw p1

    .line 265
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-nez p1, :cond_3

    .line 266
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)V

    :goto_0
    invoke-static {v0, v3, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    .line 280
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 281
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    .line 284
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz p1, :cond_6

    .line 285
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gm()Ljava/util/Set;

    move-result-object p1

    .line 286
    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 288
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    const-string v1, "subscribe_app_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "adInfo"

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "webview_time_track"

    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "download_app_ad"

    .line 294
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 298
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi()Lcom/bytedance/sdk/component/Qhi/kYc;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 300
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$5;

    invoke-direct {v2, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/component/Qhi/kYc;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Tgh;)Lcom/bytedance/sdk/component/Qhi/kYc;

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;)V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 620
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hpZ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 5

    .line 567
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac:Z

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CJ:J

    sub-long/2addr v1, v3

    .line 574
    :try_start_0
    const-string v3, "duration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 576
    const-string v2, "TTAD.RFPM"

    const-string v3, "sendPlayableEvent error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ABk:Ljava/lang/String;

    invoke-static {v1, v2, p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 581
    const-string v0, "return_foreground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 582
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac:Z

    :cond_1
    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CJ:J

    sub-long/2addr v0, v2

    .line 600
    :try_start_0
    const-string v2, "duration"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 602
    const-string v0, "TTAD.RFPM"

    const-string v1, "endShow json error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public Qhi(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 509
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDomStorageEnabled(Z)V

    :cond_0
    return-void
.end method

.method public Qhi(ZLjava/lang/String;I)V
    .locals 3

    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_0

    .line 839
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->fl(Z)V

    .line 840
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(ZLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public ROR()V
    .locals 4

    .line 587
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CJ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CJ:J

    .line 591
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Gm()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x384

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    .line 593
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac(Z)V

    return-void
.end method

.method public Sf()V
    .locals 5

    .line 629
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Gm()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->zc(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_2

    .line 636
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->ac()V

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 642
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_4

    .line 643
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(I)V

    .line 645
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hpZ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 646
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js()Z

    move-result v0

    if-nez v0, :cond_a

    .line 647
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    .line 648
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v2, :cond_6

    .line 649
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(I)V

    .line 652
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 653
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;Z)V

    .line 655
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ROR()V

    .line 656
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Gm()V

    .line 658
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi(Z)V

    .line 659
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Jma()V

    .line 660
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->bxS:Z

    .line 662
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 663
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi(Z)V

    .line 664
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    .line 665
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->zc(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 666
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const/16 v3, 0x384

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 668
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_8

    .line 669
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 670
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v2, 0x258

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    .line 673
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_9

    .line 674
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    :cond_9
    return-void

    .line 677
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    :cond_b
    return-void
.end method

.method public Tgh()V
    .locals 3

    .line 534
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    .line 535
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;->Qhi(Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$Qhi;)V

    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Gm:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Tgh(I)V
    .locals 0

    .line 750
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->fl:I

    return-void
.end method

.method public Tgh(Z)V
    .locals 5

    if-eqz p1, :cond_4

    .line 1035
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1038
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1039
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(I)V

    .line 1041
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1043
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hpZ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1044
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ls()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 1045
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1046
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const/16 v2, 0x320

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 1049
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ()V

    .line 1050
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Z)V

    .line 1051
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ac(Z)V

    .line 1052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ABk:Ljava/lang/String;

    const-string v3, "py_loading_success"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public WAv()Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->WAv:Z

    return v0
.end method

.method public ac()V
    .locals 1

    const/4 v0, 0x1

    .line 478
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ:Z

    return-void
.end method

.method public ac(I)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 3

    .line 863
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->fl(Z)V

    .line 865
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ROR(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ac(Z)V
    .locals 1

    .line 711
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->WAv:Z

    if-nez p1, :cond_0

    .line 714
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const/16 v0, 0x384

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public cJ()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lG()V

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh()V

    :cond_1
    return-void
.end method

.method public cJ(I)V
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Sf:Z

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hpZ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessage(I)Z

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 3

    .line 850
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_0

    .line 851
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->fl(Z)V

    .line 852
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf(Ljava/lang/String;)V

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 856
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Z)V

    .line 857
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi(Z)V

    .line 858
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    :cond_1
    return-void
.end method

.method public cJ(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->bxS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->bxS()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->EBS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    if-eqz p1, :cond_1

    .line 525
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->bxS()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 526
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->bxS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->cJ(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    :catchall_1
    :cond_1
    return-void
.end method

.method public fl()V
    .locals 2

    .line 490
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CQU:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CQU:Z

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac(Z)V

    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Gm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Landroid/content/Context;)V

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->js()V

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 500
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->cJ(Lcom/bytedance/sdk/openadsdk/WAv/Sf;)V

    return-void
.end method

.method public fl(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 746
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->fl:I

    return-void
.end method

.method public fl(Z)V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 892
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x384

    if-ne v0, v2, :cond_9

    .line 898
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->WAv:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 902
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_4

    .line 904
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 906
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CJ(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 909
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 913
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "tt_skip_ad_time_text"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 915
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 916
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 917
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    goto :goto_0

    .line 919
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "tt_reward_screen_skip_tx"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 920
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    .line 924
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 925
    iput v2, v0, Landroid/os/Message;->what:I

    add-int/lit8 v2, p1, -0x1

    .line 926
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 927
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 928
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->fl(I)V

    goto :goto_2

    .line 930
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 931
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hpZ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH()Z

    move-result p1

    if-nez p1, :cond_6

    .line 937
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac()V

    .line 938
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    goto :goto_1

    .line 941
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 942
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 943
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    .line 945
    :goto_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Sf:Z

    if-nez p1, :cond_7

    .line 946
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Dww:Z

    .line 949
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->iMK()V

    goto/16 :goto_5

    :cond_8
    :goto_3
    return v1

    .line 950
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x320

    if-ne v0, v2, :cond_f

    .line 951
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->CJ()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    return v1

    .line 958
    :cond_b
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v3, 0x0

    .line 962
    :try_start_0
    const-string v0, "remove_loading_page_type"

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 963
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_c

    .line 964
    const-string v0, "remove_loading_page_reason"

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 966
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object p1

    .line 967
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    if-eqz v0, :cond_d

    .line 968
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->bxS()Ljava/lang/String;

    move-result-object v0

    .line 969
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object p1, v0

    .line 973
    :cond_d
    const-string v0, "playable_url"

    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 974
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz p1, :cond_e

    .line 975
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getDisplayDuration()J

    move-result-wide v3

    .line 977
    :cond_e
    const-string p1, "duration"

    invoke-virtual {v6, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 979
    const-string v0, "TTAD.RFPM"

    const-string v5, "handleMessage json error"

    invoke-static {v0, v5, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    move-wide v7, v3

    .line 982
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    const-string v5, "remove_loading_page"

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 986
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 987
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Gm:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_f

    .line 988
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Sf()V

    :cond_f
    :goto_5
    return v1
.end method

.method public hm()V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_2

    .line 691
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 693
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getProgress()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 696
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setProgress(I)V

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_3

    .line 699
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NFd()V

    :cond_3
    return-void
.end method

.method public hpZ()Lcom/bytedance/sdk/openadsdk/WAv/fl;
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pM:Lcom/bytedance/sdk/openadsdk/WAv/fl;

    return-object v0
.end method

.method public iMK()V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 806
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public kYc()Z
    .locals 1

    .line 1061
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Dww:Z

    return v0
.end method

.method public pA()V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 874
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->pA:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public tP()Z
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->kYc:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zc()I
    .locals 1

    .line 733
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->fl:I

    return v0
.end method
