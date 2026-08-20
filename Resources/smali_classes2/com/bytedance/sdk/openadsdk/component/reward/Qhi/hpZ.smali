.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;
.super Ljava/lang/Object;
.source "RewardFullWebViewManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/WAv/Sf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$ac;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$cJ;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;
    }
.end annotation


# instance fields
.field private final ABk:Z

.field protected CJ:Ljava/lang/String;

.field private CQU:F

.field private volatile Dq:I

.field private Dww:Landroid/view/View;

.field private EBS:Z

.field private Eh:J

.field private FQ:Z

.field private final Gm:Ljava/lang/String;

.field private HLI:Ljava/lang/String;

.field private volatile Hf:I

.field private HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private Jma:Z

.field private volatile MND:I

.field private MQ:Z

.field private NBs:J

.field private NFd:Z

.field private PAe:Z

.field private Qe:I

.field Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

.field ROR:Ljava/lang/String;

.field protected Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

.field Tgh:I

.field private final WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private YB:Ljava/lang/String;

.field private aP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field protected ac:Z

.field private bxS:Landroid/view/View;

.field cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

.field private cjC:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field private dI:Z

.field private dIT:I

.field private dVA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

.field private es:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

.field fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

.field hm:Z

.field private hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

.field private iMK:I

.field private ip:Z

.field private jPH:J

.field private final js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field private kYc:Z

.field private lB:F

.field private lG:Lcom/bytedance/sdk/openadsdk/common/ROR;

.field private oU:Z

.field private ots:Z

.field private pA:I

.field private pM:F

.field private pv:I

.field private qMt:Z

.field private sDy:F

.field private final tP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private xyz:J

.field private yN:Z

.field private zc:I

.field private zjb:Lcom/bytedance/sdk/openadsdk/common/cJ;

.field private zn:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 4

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ac:Z

    const/4 v1, 0x0

    .line 134
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->kYc:Z

    .line 136
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh:I

    .line 143
    const-string v2, ""

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ROR:Ljava/lang/String;

    .line 150
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hm:Z

    .line 162
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->aP:Landroid/util/SparseArray;

    .line 163
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->NFd:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 164
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->sDy:F

    .line 165
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lB:F

    .line 170
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zn:Z

    const-wide/16 v2, -0x1

    .line 185
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->xyz:J

    .line 188
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MND:I

    const/4 v0, -0x1

    .line 192
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qe:I

    .line 198
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dq:I

    .line 200
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Hf:I

    const-wide/16 v1, 0x0

    .line 202
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->NBs:J

    .line 1668
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pv:I

    .line 208
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 209
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 210
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm:Ljava/lang/String;

    .line 211
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ABk:Z

    return-void
.end method

.method static synthetic ABk(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dq:I

    return p0
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;F)F
    .locals 0

    .line 98
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lB:F

    return p1
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt:Z

    return p1
.end method

.method static synthetic CQU(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Jma:Z

    return p0
.end method

.method static synthetic Dww(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F
    .locals 0

    .line 98
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lB:F

    return p0
.end method

.method static synthetic EBS(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F
    .locals 0

    .line 98
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pM:F

    return p0
.end method

.method static synthetic Eh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/util/SparseArray;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->aP:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MND:I

    return p0
.end method

.method static synthetic HzH(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I
    .locals 2

    .line 98
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MND:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MND:I

    return v0
.end method

.method static synthetic MQ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Eh:J

    return-wide v0
.end method

.method static synthetic NFd(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->NFd:Z

    return p0
.end method

.method private PAe()V
    .locals 4

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->yN:Z

    const/4 v1, 0x0

    .line 484
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->oU:Z

    .line 485
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v3, 0x258

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 486
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 487
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 490
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 491
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 492
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qb()Z

    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Sf(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 499
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-direct {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 500
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;F)F
    .locals 0

    .line 98
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CQU:F

    return p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pv:I

    return p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;J)J
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Eh:J

    return-wide p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->aP:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dww:Landroid/view/View;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object p0
.end method

.method private static Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;III)Ljava/lang/String;
    .locals 4

    .line 843
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result v0

    .line 844
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 845
    const-string v2, "&"

    const-string v3, "?"

    if-ne p2, v1, :cond_1

    .line 846
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 847
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 849
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 851
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "orientation=portrait"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 853
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 854
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 856
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 858
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "height="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "&width="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "&aspect_ratio="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 860
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 861
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/fl;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V
    .locals 12

    .line 944
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 945
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qe:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/zc;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/cJ/Gm;I)V

    const/4 v1, 0x1

    .line 954
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/cJ/zc;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    .line 955
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->dVA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

    .line 956
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA()Z

    move-result v2

    const-string v3, "landingpage_endcard"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cJ(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cJ(Z)V

    .line 961
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 970
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ()Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm:Ljava/lang/String;

    invoke-static {v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zjb:Lcom/bytedance/sdk/openadsdk/common/cJ;

    if-eqz v0, :cond_3

    .line 975
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p1, v3

    :cond_2
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(Ljava/lang/String;)V

    .line 977
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 978
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/component/widget/SSWebView;)V

    .line 980
    :cond_4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zjb:Lcom/bytedance/sdk/openadsdk/common/cJ;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 981
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js()Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v9, v11

    goto :goto_2

    :cond_6
    :goto_1
    move v9, v1

    :goto_2
    move-object v2, p1

    move-object v3, p0

    move-object v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/cJ;Lcom/bytedance/sdk/openadsdk/cJ/zc;ZLcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->es:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    .line 1203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1204
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->es:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 1205
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->es:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ABk:Z

    if-eqz v0, :cond_7

    const-string v0, "rewarded_video"

    goto :goto_3

    :cond_7
    const-string v0, "fullscreen_interstitial_ad"

    :goto_3
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi(Ljava/lang/String;)V

    .line 1206
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1207
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1351
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz p1, :cond_9

    .line 1352
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$9;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zjb:Lcom/bytedance/sdk/openadsdk/common/cJ;

    move-object v2, v0

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$9;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/cJ/zc;Lcom/bytedance/sdk/openadsdk/common/cJ;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1362
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    .line 1364
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1366
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    .line 1367
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p1, v11}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDisplayZoomControls(Z)V

    .line 1369
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Ljava/lang/String;)Z
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zn:Z

    return p1
.end method

.method private Qhi(Ljava/lang/String;)Z
    .locals 2

    .line 1374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->PAe()V

    return-void
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->NFd:Z

    return p1
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->dI:Z

    return p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->kYc:Z

    return p1
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->es:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    return-object p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MQ:Z

    return p1
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->dIT:I

    return p0
.end method

.method static synthetic aP(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->kYc:Z

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;F)F
    .locals 0

    .line 98
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->sDy:F

    return p1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zn:Z

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ip:Z

    return p1
.end method

.method static synthetic bxS(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F
    .locals 0

    .line 98
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->sDy:F

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;F)F
    .locals 0

    .line 98
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pM:F

    return p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->dI:Z

    return p1
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->dVA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ots:Z

    return p1
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->YB:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hpZ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I
    .locals 2

    .line 98
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Hf:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Hf:I

    return v0
.end method

.method static synthetic iMK(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I
    .locals 2

    .line 98
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dq:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dq:I

    return v0
.end method

.method private ip()V
    .locals 4

    .line 795
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    const-string v1, "showPlayableEndCardOverlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 797
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x258

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    .line 798
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 806
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    :cond_0
    return-void
.end method

.method static synthetic kYc(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic lB(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/view/View;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->bxS:Landroid/view/View;

    return-object p0
.end method

.method static synthetic lG(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ABk:Z

    return p0
.end method

.method static synthetic pA(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cjC:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    return-object p0
.end method

.method static synthetic pM(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/common/ROR;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lG:Lcom/bytedance/sdk/openadsdk/common/ROR;

    return-object p0
.end method

.method static synthetic qMt(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F
    .locals 0

    .line 98
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CQU:F

    return p0
.end method

.method static synthetic sDy(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/view/View;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dww:Landroid/view/View;

    return-object p0
.end method

.method static synthetic tP(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/common/cJ;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zjb:Lcom/bytedance/sdk/openadsdk/common/cJ;

    return-object p0
.end method

.method private xyz()Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;
    .locals 4

    .line 1657
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1658
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ABk:Z

    if-eqz v2, :cond_1

    const-string v2, "rewarded_video"

    goto :goto_1

    :cond_1
    const-string v2, "fullscreen_interstitial_ad"

    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-object v1
.end method

.method static synthetic zc(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Hf:I

    return p0
.end method


# virtual methods
.method public ABk()V
    .locals 5

    .line 832
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Tgh(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ:Ljava/lang/String;

    .line 833
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zc:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->iMK:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ:Ljava/lang/String;

    .line 834
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ:Ljava/lang/String;

    const-string v1, "use_second_endcard=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->FQ:Z

    :cond_0
    return-void
.end method

.method public CJ(Z)V
    .locals 2

    .line 1515
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->fl(Z)V

    .line 1522
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1523
    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1524
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    const-string v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public CJ()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->PAe:Z

    return v0
.end method

.method public CQU()V
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_0

    .line 1611
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Sf()V

    :cond_0
    return-void
.end method

.method public Dww()Z
    .locals 3

    .line 1596
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1597
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->FQ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->PAe:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->zc()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    .line 1600
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->FQ:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->PAe:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MQ:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public EBS()Ljava/lang/String;
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ROR:Ljava/lang/String;

    return-object v0
.end method

.method public Eh()V
    .locals 3

    .line 1633
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_0

    .line 1634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(J)V

    :cond_0
    return-void
.end method

.method public FQ()Z
    .locals 1

    .line 1863
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->yN:Z

    return v0
.end method

.method public Gm()Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    return-object v0
.end method

.method public HzH()Z
    .locals 1

    .line 1403
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MQ:Z

    return v0
.end method

.method public Jma()V
    .locals 2

    .line 1692
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    return-void
.end method

.method public MQ()V
    .locals 4

    .line 1533
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    .line 1534
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->hm()V

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    .line 1537
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->hm()V

    .line 1539
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->xyz:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->xyz:J

    .line 1545
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1546
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->WAv()V

    .line 1547
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_4

    .line 1548
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 1550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    .line 1551
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;ZZ)V

    goto :goto_0

    .line 1553
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 1554
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    .line 1555
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;ZZ)V

    .line 1559
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1560
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->WAv()V

    .line 1561
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_6

    .line 1562
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1563
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 1564
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    .line 1565
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;ZZ)V

    .line 1567
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->yN:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qb()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1569
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ip()V

    goto :goto_1

    .line 1572
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 1573
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    .line 1574
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;ZZ)V

    .line 1578
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_7

    .line 1579
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ROR()V

    :cond_7
    return-void
.end method

.method public NFd()V
    .locals 1

    .line 1644
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_0

    .line 1645
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->ac()V

    .line 1646
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->CJ()V

    :cond_0
    return-void
.end method

.method public Qhi()V
    .locals 4

    .line 215
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->EBS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->EBS:Z

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zc:I

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->NBs:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->iMK:I

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dI:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA:I

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 223
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ()V

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->NBs:J

    return-void
.end method

.method public Qhi(F)V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;F)V

    return-void
.end method

.method public Qhi(I)V
    .locals 1

    .line 1671
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pv:I

    if-gtz v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 1674
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Z)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 1678
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Z)V

    .line 1680
    :cond_1
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pv:I

    return-void
.end method

.method public Qhi(II)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 527
    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 528
    const-string p1, "height"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 529
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    const-string p2, "resize"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 531
    const-string p2, "TTAD.RFWVM"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Landroid/webkit/DownloadListener;)V
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1396
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Landroid/webkit/WebView;)V

    .line 1412
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v2, 0x183e

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/HzH;->Qhi(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMixedContentMode(I)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V
    .locals 9

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "click_scence"

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 360
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->xyz()Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    .line 363
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 364
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    .line 365
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->bIO()Ljava/lang/String;

    move-result-object v1

    .line 366
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 367
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 368
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 369
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 370
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v5

    const/4 v6, 0x7

    const/4 v7, 0x5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(I)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$cJ;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {v5, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$cJ;-><init>(Landroid/view/View;)V

    .line 371
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Qhi;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v4

    .line 372
    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 373
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v4

    .line 374
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA()Z

    move-result v5

    const-string v8, "landingpage_endcard"

    if-eqz v5, :cond_3

    move-object v5, v8

    goto :goto_2

    :cond_3
    move-object v5, p2

    :goto_2
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v4

    .line 375
    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    .line 376
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$13;

    invoke-direct {v4, p0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$13;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    .line 377
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 389
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 391
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 394
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    .line 395
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 396
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 397
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 398
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 399
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(I)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$cJ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$cJ;-><init>(Landroid/view/View;)V

    .line 400
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Qhi;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 401
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    .line 402
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    .line 403
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p2, v8

    :cond_6
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object p2

    .line 404
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    .line 405
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$15;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$15;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V

    .line 406
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$14;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$14;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V

    .line 414
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd$Qhi;)V

    .line 421
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$ac;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$ac;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$1;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/WAv;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 422
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$ac;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$ac;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$1;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/WAv;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 424
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ots:Z

    .line 425
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object p2

    .line 426
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    .line 427
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hpZ()Lcom/bytedance/sdk/openadsdk/WAv/fl;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/fl;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$16;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$16;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V

    .line 428
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/cJ;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 458
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->FQ:Z

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl(Z)V

    .line 459
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$17;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$17;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V

    .line 460
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/cJ;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/common/ROR;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lG:Lcom/bytedance/sdk/openadsdk/common/ROR;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/NFd;

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;ZZ)V
    .locals 2

    .line 1486
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1487
    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1488
    const-string p2, "endcard_show"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1490
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz p2, :cond_0

    .line 1492
    const-string v1, "multi_ads_show"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Tgh()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1494
    :cond_0
    const-string p2, "endcard_control_event"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz p3, :cond_1

    .line 1496
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MQ:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 1498
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->dI:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1501
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->dI:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V
    .locals 1

    .line 282
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V

    .line 327
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)V

    .line 329
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$11;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$11;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Landroid/webkit/DownloadListener;)V

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ots:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Z)V

    .line 340
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$12;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$12;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 536
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ac:Z

    return-void
.end method

.method public Qhi(ZILjava/lang/String;)V
    .locals 1

    .line 1616
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1620
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->cJ()V

    return-void

    .line 1622
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(ZZ)V
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;ZZ)V

    return-void
.end method

.method public ROR()V
    .locals 5

    .line 750
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 754
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt:Z

    if-eqz v0, :cond_1

    .line 756
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ip()V

    return-void

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 761
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->fl()V

    .line 762
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;ZZ)V

    .line 763
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    .line 764
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    .line 765
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->zc()V

    .line 768
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt:Z

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;ZZ)V

    .line 772
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    .line 773
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    .line 775
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 776
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 777
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Dww()V

    goto :goto_0

    .line 780
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->tP()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 781
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ(I)V

    .line 783
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->CJ()V

    .line 785
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    .line 787
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->oU:Z

    return-void
.end method

.method public Sf()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object v0
.end method

.method public Tgh()V
    .locals 9

    .line 595
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 599
    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HLI:Ljava/lang/String;

    .line 600
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HLI:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zc:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->iMK:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HLI:Ljava/lang/String;

    .line 608
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 609
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js()Z

    move-result v1

    const/4 v8, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v8

    :goto_1
    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V

    .line 730
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 731
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$3;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/cJ/zc;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 741
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HLI:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/tP;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;)V

    .line 742
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt:Z

    return-void
.end method

.method public WAv()Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    return-object v0
.end method

.method public aP()Z
    .locals 1

    .line 1639
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hm:Z

    return v0
.end method

.method public ac(Z)V
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    return-void
.end method

.method public ac()Z
    .locals 1

    .line 511
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ip:Z

    return v0
.end method

.method public bxS()Ljava/lang/String;
    .locals 1

    .line 1592
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ:Ljava/lang/String;

    return-object v0
.end method

.method cJ()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->bxS:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Jma:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lG:Lcom/bytedance/sdk/openadsdk/common/ROR;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/ROR;->CJ()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    sget v2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->iMK:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->g_()V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    sget v2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->hpZ:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->g_()V

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setDisplayZoomControls(Z)V

    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_3

    .line 253
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 270
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLandingPage(Z)V

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v1, "landingpage_endcard"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setTag(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ne()Lcom/bytedance/sdk/component/widget/cJ/Qhi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMaterialMeta(Lcom/bytedance/sdk/component/widget/cJ/Qhi;)V

    :cond_5
    return-void
.end method

.method public cJ(I)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 909
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLandingPage(Z)V

    .line 914
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "landingpage_endcard"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setTag(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ne()Lcom/bytedance/sdk/component/widget/cJ/Qhi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setMaterialMeta(Lcom/bytedance/sdk/component/widget/cJ/Qhi;)V

    :cond_3
    if-nez p1, :cond_4

    .line 918
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 919
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh()V

    :cond_4
    return-void
.end method

.method public cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V
    .locals 2

    .line 1463
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CJ(Z)V

    .line 1464
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1465
    const-string v1, "viewStatus"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1466
    const-string p2, "viewableChange"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public cJ(Z)V
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    return-void
.end method

.method public es()Z
    .locals 1

    .line 1750
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public fl()V
    .locals 8

    .line 540
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ttc()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cjC:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    if-nez v0, :cond_3

    .line 544
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->YB:Ljava/lang/String;

    .line 546
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/fl/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->cJ()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cjC:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 547
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/fl/cJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cjC:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->YB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->dIT:I

    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 548
    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qe:I

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->YB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_2

    .line 551
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qe:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(I)V

    .line 553
    :cond_2
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->NBs:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cjC:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->YB:Ljava/lang/String;

    const-string v5, "landingpage_endcard"

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V

    .line 557
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ:Ljava/lang/String;

    const-string v2, "play.google.com/store"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 558
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 564
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ac:Z

    if-eqz v0, :cond_9

    .line 565
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 566
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ots:Z

    if-eqz v0, :cond_6

    return-void

    .line 569
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&is_pre_render=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preLoadEndCard: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v2, :cond_7

    .line 572
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->CJ()V

    .line 577
    :cond_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/tP;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;Ljava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac(Ljava/lang/String;)V

    .line 579
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ots:Z

    return-void

    .line 580
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 582
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ac()V

    :cond_9
    return-void

    .line 560
    :cond_a
    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hm:Z

    return-void
.end method

.method public fl(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 1699
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->PAe:Z

    .line 1700
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1702
    :try_start_0
    const-string v1, "endcard_overlay_render_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1708
    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm:Ljava/lang/String;

    const-string v3, "use_second_endcard"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1709
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->xyz:J

    .line 1711
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    .line 1714
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Sf()V

    .line 1716
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm:Ljava/lang/String;

    const-string v2, "endcard_close_skip"

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1719
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    const-string v0, "click_endcard_close"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1729
    :catch_0
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    return-void
.end method

.method public hm()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    return-object v0
.end method

.method public hpZ()Z
    .locals 1

    .line 1400
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public iMK()V
    .locals 12

    .line 867
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/lG;->Qhi(Landroid/webkit/WebView;)V

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    .line 871
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/lG;->Qhi(Landroid/webkit/WebView;)V

    .line 873
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->jPH:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-lez v4, :cond_4

    .line 874
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->xyz:J

    cmp-long v2, v6, v2

    if-lez v2, :cond_2

    .line 875
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->xyz:J

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->jPH:J

    .line 880
    :cond_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 882
    :try_start_0
    const-string v0, "endcard_overlay_render_type"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_0
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Gm:Ljava/lang/String;

    const-string v8, "second_endcard_duration"

    iget-wide v10, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->jPH:J

    invoke-static/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_4
    const/4 v0, 0x0

    .line 890
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    .line 891
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 892
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Z)V

    .line 893
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->zc()V

    .line 895
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_6

    .line 896
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Gm()V

    .line 898
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_7

    .line 899
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Gm()V

    .line 901
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_a

    .line 902
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move v5, v1

    :cond_9
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac(Z)V

    .line 904
    :cond_a
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->cJ(Lcom/bytedance/sdk/openadsdk/WAv/Sf;)V

    return-void
.end method

.method public js()Z
    .locals 1

    .line 1733
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kYc()V
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_0

    .line 1421
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->hm()V

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_1

    .line 1424
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Sf()V

    :cond_1
    return-void
.end method

.method public lB()Z
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1665
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Sf()Z

    move-result v0

    return v0
.end method

.method public lG()V
    .locals 2

    .line 1687
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 1688
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    return-void
.end method

.method public pA()Z
    .locals 3

    .line 1381
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1385
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1386
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v2, "show_landingpage"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public pM()V
    .locals 1

    .line 1627
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_0

    .line 1628
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->ROR()V

    :cond_0
    return-void
.end method

.method public qMt()I
    .locals 1

    .line 1584
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh:I

    return v0
.end method

.method public sDy()V
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_0

    .line 1652
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->WAv()V

    :cond_0
    return-void
.end method

.method public tP()V
    .locals 8

    .line 1429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_0

    .line 1430
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->Gm()V

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v0, :cond_1

    .line 1433
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->Gm()V

    .line 1436
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->xyz:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1437
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->jPH:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->xyz:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->jPH:J

    .line 1438
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->xyz:J

    .line 1444
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1446
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 1447
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    .line 1448
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;ZZ)V

    .line 1450
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1452
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 1453
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Z)V

    .line 1454
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;ZZ)V

    :cond_4
    return-void
.end method

.method public yN()V
    .locals 1

    .line 1816
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_0

    .line 1817
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl()V

    :cond_0
    return-void
.end method

.method public zc()Lcom/bytedance/sdk/openadsdk/cJ/zc;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    return-object v0
.end method

.method public zn()Z
    .locals 1

    .line 1737
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->oU:Z

    return v0
.end method
