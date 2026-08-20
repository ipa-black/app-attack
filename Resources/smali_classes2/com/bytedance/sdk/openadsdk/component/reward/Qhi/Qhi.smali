.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;
.super Ljava/lang/Object;
.source "RewardFullContext.java"


# instance fields
.field public final ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final CJ:Z

.field public final CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

.field public Dq:I

.field public final Dww:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;

.field public final EBS:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public EGK:Z

.field public final Eh:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

.field public final FQ:Landroid/app/Activity;

.field public final Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Gy:J

.field public HLI:J

.field public Hf:F

.field public final HzH:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

.field public MND:Ljava/lang/String;

.field public final MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public NBs:I

.field public final NFd:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

.field public final PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

.field private PER:J

.field public Qe:Z

.field public final Qhi:I

.field public final ROR:Z

.field public ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

.field public Ri:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

.field public Sf:I

.field public final Tgh:I

.field public Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

.field public VnT:Z

.field public final WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public YB:I

.field public final aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

.field public final ac:Z

.field public final bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

.field public final cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field public cjC:Z

.field public dI:I

.field public dIT:Z

.field public dVA:Z

.field public final es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

.field public final fl:Ljava/lang/String;

.field public gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

.field public hm:I

.field public final hpZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final iMK:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ip:Landroid/content/Context;

.field public final jPH:Z

.field public final js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

.field public final kYc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

.field public final lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

.field public oU:Lcom/bytedance/sdk/openadsdk/common/ROR;

.field public ots:Z

.field public final pA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

.field public pv:Z

.field public final qMt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final sDy:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

.field public final tP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final xyz:Lcom/bytedance/sdk/component/utils/CQU;

.field public final yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

.field public final zc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public zjb:Z

.field public final zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/CQU;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;I)V
    .locals 4

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    .line 68
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hm:I

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->iMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hpZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->HzH:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->kYc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->qMt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->EBS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    const/4 v1, 0x1

    .line 111
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    const-wide/16 v2, 0x0

    .line 118
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->HLI:J

    .line 130
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    .line 131
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    .line 132
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    .line 133
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 134
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qhi:I

    const/4 v2, 0x2

    if-eqz p5, :cond_1

    if-ne p5, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 135
    :goto_1
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->jPH:Z

    if-eqz p5, :cond_3

    if-ne p5, v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    .line 136
    :goto_3
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->EGK:Z

    .line 137
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    .line 138
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    const/4 v3, 0x7

    if-ne p2, v3, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    if-eqz v0, :cond_5

    .line 139
    const-string p2, "rewarded_video"

    goto :goto_4

    :cond_5
    const-string p2, "fullscreen_interstitial_ad"

    :goto_4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    .line 140
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pv:Z

    .line 141
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    .line 145
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    .line 146
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->HzH(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->iMK(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    if-ne p5, v2, :cond_6

    .line 149
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Gm;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Gm;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    goto :goto_5

    :cond_6
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    :goto_5
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Eh:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    if-ne p5, v2, :cond_7

    .line 151
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/ROR;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ROR;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    goto :goto_6

    :cond_8
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/fl;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/fl;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    :goto_6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    .line 152
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    .line 153
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    .line 154
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dww:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;

    .line 155
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    .line 156
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    .line 157
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    .line 158
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    .line 159
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    .line 160
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    .line 161
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    .line 162
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->NFd:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    .line 163
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->sDy:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    .line 164
    new-instance p2, Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-direct {p2, p4}, Lcom/bytedance/sdk/openadsdk/WAv/hm;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    .line 165
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ROR;->Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/utils/ROR$Qhi;)Lcom/bytedance/sdk/openadsdk/utils/zc;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 2

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PER:J

    return-void
.end method

.method public Qhi(Z)V
    .locals 1

    .line 184
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zjb:Z

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    return-void
.end method

.method public ac()J
    .locals 6

    .line 202
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gy:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PER:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public cJ()V
    .locals 6

    .line 195
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PER:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PER:J

    .line 198
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gy:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PER:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gy:J

    return-void
.end method
