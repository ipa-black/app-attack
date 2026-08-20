.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/CJ/ac;
.implements Lcom/bykv/vk/openvk/component/video/api/renderview/Qhi;
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;
.implements Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/Tgh$cJ;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/fl$Qhi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bykv/vk/openvk/component/video/api/CJ/ac<",
        "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
        ">;",
        "Lcom/bykv/vk/openvk/component/video/api/renderview/Qhi;",
        "Lcom/bytedance/sdk/component/utils/CQU$Qhi;",
        "Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;",
        "Lcom/bytedance/sdk/openadsdk/core/widget/Tgh$cJ;",
        "Lcom/bytedance/sdk/openadsdk/core/widget/fl$Qhi;"
    }
.end annotation


# instance fields
.field ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

.field CJ:Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

.field CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field Dww:I

.field EBS:Z

.field Eh:Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

.field Gm:Landroid/widget/ImageView;

.field HzH:I

.field Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

.field MQ:I

.field NFd:Z

.field protected final Qhi:I

.field ROR:Landroid/view/View;

.field Sf:Landroid/widget/ImageView;

.field Tgh:Landroid/view/View;

.field WAv:Landroid/view/View;

.field aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

.field ac:Landroid/view/ViewGroup;

.field bxS:I

.field protected final cJ:I

.field private es:J

.field fl:Landroid/widget/ImageView;

.field hm:Landroid/view/View;

.field hpZ:Landroid/widget/TextView;

.field iMK:Landroid/widget/TextView;

.field js:Z

.field kYc:I

.field lB:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

.field lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

.field pA:Landroid/widget/TextView;

.field pM:Landroid/content/Context;

.field qMt:Z

.field sDy:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

.field tP:I

.field private final yN:Ljava/lang/String;

.field zc:Landroid/view/View;

.field private zn:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$Qhi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 154
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/CJ/fl;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/CJ/fl;Z)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe4

    .line 75
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi:I

    const/16 v0, 0xa0

    .line 76
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->qMt:Z

    .line 119
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->NFd:Z

    .line 129
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->js:Z

    .line 261
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->yN:Ljava/lang/String;

    .line 139
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/fl;

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    .line 141
    invoke-virtual {p0, p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ(Z)V

    .line 142
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    .line 143
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->qMt:Z

    .line 144
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Dww:I

    .line 145
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lB:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    .line 146
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/16 p2, 0x8

    .line 147
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ(I)V

    .line 148
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Landroid/content/Context;Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ()V

    .line 150
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zc()V

    return-void
.end method

.method private CQU()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Dww()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$Qhi;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zn:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$Qhi;

    return-object p0
.end method

.method private Qhi(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 7

    .line 754
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;

    const-string v2, "load_vast_icon_fail"

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method private Tgh(I)V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zc:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    return-void
.end method

.method private fl(I)I
    .locals 3

    .line 475
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->tP:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->MQ:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    const/high16 v1, 0x43640000    # 228.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v0

    .line 479
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    const/high16 v2, 0x43200000    # 160.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    .line 481
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->tP:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 482
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->MQ:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public ABk()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ:Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    return-object v0
.end method

.method CJ()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ:Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/renderview/Qhi;)V

    .line 369
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public CJ(I)V
    .locals 1

    .line 940
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->bxS:I

    .line 941
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    return-void
.end method

.method public CJ(Z)V
    .locals 1

    .line 392
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->NFd:Z

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Z)V

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    if-eqz p1, :cond_3

    .line 398
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Z)V

    return-void

    .line 401
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 402
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Z)V

    .line 404
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    if-eqz p1, :cond_3

    .line 405
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Z)V

    :cond_3
    return-void
.end method

.method Dww()Z
    .locals 2

    .line 968
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Dww:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->qMt:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public EBS()Z
    .locals 1

    .line 935
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->EBS:Z

    return v0
.end method

.method public Gm()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 921
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(ZZ)V

    return-void
.end method

.method public HzH()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Tgh(Landroid/view/View;)V

    .line 548
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ROR:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Tgh(Landroid/view/View;)V

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public MQ()V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Gm:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public Qhi()V
    .locals 2

    const/4 v0, 0x0

    .line 555
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->qMt:Z

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(ZZ)V

    .line 556
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->tP()V

    return-void
.end method

.method public Qhi(I)V
    .locals 0

    return-void
.end method

.method public Qhi(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 426
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result p1

    :cond_0
    if-gtz p1, :cond_1

    return-void

    .line 432
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->HzH:I

    .line 433
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->qMt()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->WAv()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Dww:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 436
    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->kYc:I

    goto :goto_1

    .line 434
    :cond_3
    :goto_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->kYc:I

    .line 438
    :goto_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->HzH:I

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->kYc:I

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(II)V

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    return-void
.end method

.method public Qhi(JJ)V
    .locals 0

    return-void
.end method

.method Qhi(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 273
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cfS()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ejU()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Px()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    .line 277
    invoke-virtual {p2, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 281
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lB:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->HzH()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 282
    new-instance p1, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderTextureView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderTextureView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 285
    :cond_3
    new-instance p1, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderSurfaceView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/SSRenderSurfaceView;-><init>(Landroid/content/Context;)V

    .line 288
    :goto_0
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 289
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 290
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 291
    move-object v1, p2

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const/16 v0, 0x8

    .line 293
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 294
    check-cast p1, Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ:Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    .line 296
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Ug:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    .line 297
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->SNp:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh:Landroid/view/View;

    .line 298
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->eG:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ROR:Landroid/view/View;

    .line 299
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->YD:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Sf:Landroid/widget/ImageView;

    .line 301
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->VV:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hm:Landroid/view/View;

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public Qhi(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p2, 0x1

    .line 831
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->EBS:Z

    .line 832
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 833
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    invoke-interface {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public Qhi(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ:Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->EBS:Z

    .line 801
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public Qhi(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 808
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ:Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    invoke-interface {p2}, Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    if-eq p1, p2, :cond_0

    return-void

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ()Z

    return-void
.end method

.method Qhi(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 308
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hm:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->WAv:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hm:Landroid/view/View;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->WAv:Landroid/view/View;

    .line 311
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->HWc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Gm:Landroid/widget/ImageView;

    .line 312
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Px:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zc:Landroid/view/View;

    .line 313
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->PAe:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    .line 314
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    .line 315
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->xyz:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pA:Landroid/widget/TextView;

    .line 316
    sget p2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->jPH:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public Qhi(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/cJ;)V
    .locals 1

    .line 346
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    if-eqz v0, :cond_0

    .line 347
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    .line 348
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK()V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/ref/WeakReference;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 613
    :cond_0
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->qMt:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(ZZ)V

    .line 614
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Landroid/view/View;Landroid/content/Context;)V

    .line 615
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->WAv:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 616
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 618
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Gm:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 619
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 622
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zc:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 623
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Gm:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 624
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac()I

    move-result v2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Gm:Landroid/widget/ImageView;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 628
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->PAe()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 629
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->PAe()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 630
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dVA()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 631
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dVA()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 632
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zjb()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 633
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zjb()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 632
    :cond_6
    const-string p2, ""

    .line 637
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    const v1, 0x22000001

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 638
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 639
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 640
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 641
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;

    invoke-direct {v6, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-direct {v4, p1, v5, v6}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/component/fl/HzH;)V

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    .line 662
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 663
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;->cJ(J)V

    goto :goto_1

    .line 666
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    invoke-virtual {v0, v4, v5, p1}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 668
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    const-string v4, "VAST_ICON"

    invoke-virtual {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    :catchall_0
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 676
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v0

    .line 677
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    if-eqz v4, :cond_a

    .line 679
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$6;

    invoke-direct {v5, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;)V

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;->post(Ljava/lang/Runnable;)Z

    .line 691
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 692
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 695
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 700
    :cond_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 701
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 702
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 703
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    const/4 v4, 0x1

    .line 704
    invoke-virtual {p2, p3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 706
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 709
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 715
    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pA:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 716
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pA:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pA:Landroid/widget/TextView;

    const-string v0, "VAST_TITLE"

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 719
    :cond_f
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pA:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 720
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 722
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ots()Ljava/lang/String;

    move-result-object p2

    .line 723
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 724
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result p1

    const-string p2, "tt_video_mobile_go_detail"

    if-eq p1, v2, :cond_12

    const/4 p3, 0x3

    if-eq p1, p3, :cond_12

    if-eq p1, v3, :cond_11

    const/4 p3, 0x5

    if-eq p1, p3, :cond_10

    const/16 p3, 0x8

    if-eq p1, p3, :cond_12

    .line 737
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 729
    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    const-string p2, "tt_video_dial_phone"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 726
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    const-string p2, "tt_video_download_apk"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 734
    :cond_12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 741
    :cond_13
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ:Landroid/widget/TextView;

    if-eqz p1, :cond_14

    .line 742
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 747
    :cond_14
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->js:Z

    if-nez p1, :cond_15

    .line 748
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh(I)V

    :cond_15
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$Qhi;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zn:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$Qhi;

    return-void
.end method

.method public bridge synthetic Qhi(Ljava/lang/Object;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    .line 72
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 605
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->js:Z

    return-void
.end method

.method public Qhi(ZZ)V
    .locals 0

    .line 916
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    return-void
.end method

.method public Qhi(ZZZ)V
    .locals 0

    .line 903
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    return-void
.end method

.method public Qhi(ILcom/bykv/vk/openvk/component/video/api/ac/cJ;Z)Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Eh:Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;->Qhi(ILcom/bykv/vk/openvk/component/video/api/ac/cJ;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public Qhi(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    .line 844
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->EBS:Z

    .line 845
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public ROR()V
    .locals 7

    .line 530
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Tgh(Landroid/view/View;)V

    .line 531
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ROR:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Tgh(Landroid/view/View;)V

    .line 533
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Sf:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Sf:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Tgh(Landroid/view/View;)V

    .line 536
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Sf:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public Sf()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->fl(Landroid/view/View;)V

    return-void
.end method

.method public Tgh()V
    .locals 0

    return-void
.end method

.method public WAv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ac()Landroid/view/View;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public ac(I)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ:Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public ac(II)V
    .locals 0

    .line 495
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->tP:I

    .line 496
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->MQ:I

    return-void
.end method

.method public ac(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    .line 521
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ(I)V

    return-void
.end method

.method public ac(Z)V
    .locals 0

    return-void
.end method

.method public bxS()Z
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Eh:Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cJ()V
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->fl(Landroid/view/View;)V

    .line 778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ROR:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->fl(Landroid/view/View;)V

    .line 779
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Sf:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 780
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->fl(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public cJ(II)V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-lez p1, :cond_1

    .line 466
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    if-lez p2, :cond_3

    .line 469
    :cond_2
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 471
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cJ(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ:Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 821
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->EBS:Z

    .line 822
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public cJ(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public cJ(Z)V
    .locals 0

    return-void
.end method

.method public cJ(ZZ)V
    .locals 1

    .line 443
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->fl:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 445
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    const-string v0, "tt_play_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 447
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    const-string v0, "tt_stop_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public cJ(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public fl()V
    .locals 0

    return-void
.end method

.method public getVideoProgress()J
    .locals 4

    .line 991
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->es:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->es:J

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lB:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_1

    .line 996
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Sf()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->es:J

    .line 999
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->es:J

    return-wide v0
.end method

.method public hm()V
    .locals 3

    const/16 v0, 0x8

    .line 859
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ(I)V

    .line 860
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Dww()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ:Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    invoke-interface {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;->setVisibility(I)V

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Sf:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 864
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ(I)V

    .line 867
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->WAv:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 868
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Gm:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 869
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zc:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 870
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 871
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 872
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pA:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 873
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Eh:Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 874
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;->Qhi(Z)V

    :cond_2
    return-void
.end method

.method hpZ()Z
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    if-nez v0, :cond_0

    .line 361
    const-string v0, "NewLiveViewLayout"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method iMK()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Eh:Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

    if-nez v0, :cond_0

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 325
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Eh:Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

    .line 326
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;->Qhi(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Eh:Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->aP:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Qhi;Lcom/bytedance/sdk/openadsdk/core/widget/Tgh$cJ;)V

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_0
    return-void
.end method

.method public kYc()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 571
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CJ:Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    if-eqz v0, :cond_0

    .line 572
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;->getView()Landroid/view/View;

    move-result-object v0

    .line 573
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public pA()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Eh:Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 340
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Tgh;->Qhi(Z)V

    :cond_0
    return-void
.end method

.method public qMt()Z
    .locals 1

    .line 885
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->qMt:Z

    return v0
.end method

.method tP()V
    .locals 2

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->WAv:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 580
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Gm:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 581
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->zc:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 582
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 583
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->iMK:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pA:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 585
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hpZ:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method zc()V
    .locals 9

    .line 159
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->NFd:Z

    if-eqz v0, :cond_0

    const-string v0, "embeded_ad"

    goto :goto_0

    :cond_0
    const-string v0, "embeded_ad_landingpage"

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 162
    const-string v0, "rewarded_video"

    const/4 v1, 0x7

    :goto_1
    move-object v7, v0

    move v8, v1

    goto :goto_2

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->iWr()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    const-string v0, "fullscreen_interstitial_ad"

    const/4 v1, 0x5

    goto :goto_1

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ejU()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    const-string v0, "banner_ad"

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    move-object v7, v0

    move v8, v2

    .line 171
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->sDy:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    .line 175
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v0, v1, v3, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    .line 176
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;)V

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->cJ(Z)V

    .line 178
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->NFd:Z

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Z)V

    goto :goto_3

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Z)V

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ac(Z)V

    .line 184
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lB:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ(Z)V

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->sDy:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lG:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    if-eqz v1, :cond_6

    .line 195
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 199
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 200
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pM:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    .line 220
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->cJ(Z)V

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->NFd:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Z)V

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->lB:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ(Z)V

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->sDy:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    if-eqz v0, :cond_7

    .line 234
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 236
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Jma:Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;)V

    :cond_8
    return-void
.end method
