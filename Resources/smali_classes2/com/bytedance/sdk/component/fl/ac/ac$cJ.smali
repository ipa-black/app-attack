.class public Lcom/bytedance/sdk/component/fl/ac/ac$cJ;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/Gm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/fl/ac/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cJ"
.end annotation


# instance fields
.field private ABk:Z

.field private CJ:Ljava/lang/String;

.field private EBS:Z

.field private Gm:Lcom/bytedance/sdk/component/fl/qMt;

.field private HzH:Lcom/bytedance/sdk/component/fl/hm;

.field private MQ:Z

.field private Qhi:Lcom/bytedance/sdk/component/fl/HzH;

.field private ROR:I

.field private Sf:I

.field private Tgh:Landroid/graphics/Bitmap$Config;

.field private WAv:I

.field private ac:Ljava/lang/String;

.field private bxS:Lcom/bytedance/sdk/component/fl/pA;

.field private cJ:Landroid/widget/ImageView;

.field private fl:Landroid/widget/ImageView$ScaleType;

.field private hm:I

.field private hpZ:Lcom/bytedance/sdk/component/fl/ac/ROR;

.field private iMK:Ljava/lang/String;

.field private kYc:I

.field private pA:Lcom/bytedance/sdk/component/fl/cJ;

.field private qMt:Ljava/util/concurrent/ExecutorService;

.field private tP:I

.field private zc:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/fl/ac/ROR;)V
    .locals 1

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 436
    iput v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->hm:I

    const/4 v0, 0x5

    .line 437
    iput v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->WAv:I

    .line 458
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->hpZ:Lcom/bytedance/sdk/component/fl/ac/ROR;

    return-void
.end method

.method static synthetic ABk(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Z
    .locals 0

    .line 427
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->ABk:Z

    return p0
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->fl:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method static synthetic EBS(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/cJ;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->pA:Lcom/bytedance/sdk/component/fl/cJ;

    return-object p0
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->ac:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic HzH(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I
    .locals 0

    .line 427
    iget p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->kYc:I

    return p0
.end method

.method static synthetic MQ(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Z
    .locals 0

    .line 427
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->EBS:Z

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->CJ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I
    .locals 0

    .line 427
    iget p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Sf:I

    return p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I
    .locals 0

    .line 427
    iget p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->hm:I

    return p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I
    .locals 0

    .line 427
    iget p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->ROR:I

    return p0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/qMt;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Gm:Lcom/bytedance/sdk/component/fl/qMt;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Landroid/widget/ImageView;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->cJ:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic bxS(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->iMK:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/HzH;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Qhi:Lcom/bytedance/sdk/component/fl/HzH;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Tgh:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic hm(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I
    .locals 0

    .line 427
    iget p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->WAv:I

    return p0
.end method

.method static synthetic hpZ(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)I
    .locals 0

    .line 427
    iget p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->tP:I

    return p0
.end method

.method static synthetic iMK(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/ac/ROR;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->hpZ:Lcom/bytedance/sdk/component/fl/ac/ROR;

    return-object p0
.end method

.method static synthetic kYc(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->qMt:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic pA(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/hm;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->HzH:Lcom/bytedance/sdk/component/fl/hm;

    return-object p0
.end method

.method static synthetic qMt(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Lcom/bytedance/sdk/component/fl/pA;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->bxS:Lcom/bytedance/sdk/component/fl/pA;

    return-object p0
.end method

.method static synthetic tP(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Z
    .locals 0

    .line 427
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->MQ:Z

    return p0
.end method

.method static synthetic zc(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;)Z
    .locals 0

    .line 427
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->zc:Z

    return p0
.end method


# virtual methods
.method public CJ(I)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 565
    iput p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->kYc:I

    return-object p0
.end method

.method public Qhi(I)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 493
    iput p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->ROR:I

    return-object p0
.end method

.method public Qhi(Landroid/graphics/Bitmap$Config;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Tgh:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public Qhi(Landroid/widget/ImageView$ScaleType;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->fl:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/hm;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->HzH:Lcom/bytedance/sdk/component/fl/hm;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/qMt;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Gm:Lcom/bytedance/sdk/component/fl/qMt;

    return-object p0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->ac:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi(Z)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 523
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->ABk:Z

    return-object p0
.end method

.method public Qhi(Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/fl/WAv;
    .locals 1

    .line 553
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->cJ:Landroid/widget/ImageView;

    .line 554
    new-instance p1, Lcom/bytedance/sdk/component/fl/ac/ac;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;-><init>(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;Lcom/bytedance/sdk/component/fl/ac/ac$1;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->CJ(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/WAv;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;
    .locals 1

    .line 547
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Qhi:Lcom/bytedance/sdk/component/fl/HzH;

    .line 548
    new-instance p1, Lcom/bytedance/sdk/component/fl/ac/ac;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;-><init>(Lcom/bytedance/sdk/component/fl/ac/ac$cJ;Lcom/bytedance/sdk/component/fl/ac/ac$1;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->CJ(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/WAv;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/HzH;I)Lcom/bytedance/sdk/component/fl/WAv;
    .locals 0

    .line 541
    iput p2, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->WAv:I

    .line 542
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    move-result-object p1

    return-object p1
.end method

.method public ac(I)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 505
    iput p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->hm:I

    return-object p0
.end method

.method public ac(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->CJ:Ljava/lang/String;

    return-object p0
.end method

.method public cJ(I)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 499
    iput p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->Sf:I

    return-object p0
.end method

.method public cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->iMK:Ljava/lang/String;

    return-object p0
.end method

.method public fl(I)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 571
    iput p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$cJ;->tP:I

    return-object p0
.end method
