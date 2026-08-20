.class public Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;
.super Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;
.source "BaseVideoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;
    }
.end annotation


# instance fields
.field private final FQ:I

.field final Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

.field private final PAe:Ljava/lang/Runnable;

.field private es:J

.field private ip:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

.field private final js:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

.field protected lB:J

.field protected lG:Z

.field private yN:Z

.field private zn:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 7

    .line 376
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/view/ViewGroup;)V

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->zn:J

    .line 56
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->es:J

    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->yN:Z

    .line 61
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->lB:J

    .line 63
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->lG:Z

    .line 65
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 484
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->PAe:Ljava/lang/Runnable;

    .line 377
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    .line 378
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->FQ:I

    .line 379
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 380
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-nez p2, :cond_0

    .line 381
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    .line 383
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->iMK()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Landroid/view/View;Ljava/util/Set;)V

    .line 387
    :cond_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/layout/TTVideoPlayLayoutForLiveLayout;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/layout/TTVideoPlayLayoutForLiveLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v3, 0x1

    move-object v0, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    .line 390
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/cJ;)V

    return-void
.end method

.method static synthetic ABk(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->PAe()V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method static synthetic CQU(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic DaO(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    return-object p0
.end method

.method static synthetic Dww(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic EBS(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic EGK(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic Eh(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic FQ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method private FQ()V
    .locals 5

    .line 500
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;->fl:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 504
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->FQ:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->hm(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x1388

    goto :goto_1

    .line 502
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->xyz()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 506
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->PAe:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->PAe:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/bytedance/sdk/component/utils/CQU;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic Gy(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic HLI(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic HUk(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic HWc(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    return-object p0
.end method

.method static synthetic Hf(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic HzH(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->lB()V

    return-void
.end method

.method static synthetic IC(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic Jma(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->NFd:J

    return-wide v0
.end method

.method static synthetic Ki(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-object p0
.end method

.method static synthetic LcF(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic MND(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method private MND()V
    .locals 11

    .line 666
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeVideoSize start.......slot="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 667
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->jPH()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 672
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;)[I

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->SL()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 676
    :goto_0
    aget v4, v0, v2

    int-to-float v6, v4

    .line 677
    aget v0, v0, v3

    int-to-float v7, v0

    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ()I

    move-result v0

    int-to-float v8, v0

    .line 679
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->fl()I

    move-result v0

    int-to-float v9, v0

    if-eqz v1, :cond_2

    cmpl-float v0, v8, v9

    if-lez v0, :cond_3

    const/4 v10, 0x1

    move-object v5, p0

    .line 686
    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(FFFFZ)V

    return-void

    :cond_2
    cmpg-float v0, v8, v9

    if-gez v0, :cond_3

    const/4 v10, 0x0

    move-object v5, p0

    .line 693
    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(FFFFZ)V

    return-void

    :cond_3
    div-float v0, v8, v9

    div-float v4, v6, v7

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v10, 0x41100000    # 9.0f

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f100000    # 0.5625f

    cmpg-float v4, v4, v1

    if-gez v4, :cond_5

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    mul-float/2addr v10, v7

    div-float v8, v10, v5

    move v2, v3

    move v9, v7

    goto :goto_1

    :cond_4
    const v1, 0x3fe38e39

    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    mul-float/2addr v10, v6

    div-float v9, v10, v5

    move v2, v3

    move v8, v6

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move v6, v8

    move v7, v9

    .line 733
    :goto_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v6

    float-to-int v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 734
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 736
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 737
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v3

    instance-of v3, v3, Landroid/view/TextureView;

    if-eqz v3, :cond_7

    .line 738
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v3

    check-cast v3, Landroid/view/TextureView;

    invoke-virtual {v3, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 739
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v3

    instance-of v3, v3, Landroid/view/SurfaceView;

    if-eqz v3, :cond_8

    .line 740
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 747
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 748
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 749
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 754
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    const-string v2, "changeSize error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic MQ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic NBs(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic NFd(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic Ohm(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic Oy(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic PAe(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method private PAe()V
    .locals 8

    .line 511
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-nez v0, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->PAe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 515
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ()V

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->zn:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->es:J

    .line 518
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->yN:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 519
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->yN:Z

    .line 520
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->NFd:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->NFd:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(JJ)V

    .line 521
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->NFd:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->WAv:J

    .line 522
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->es:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->NFd:J

    invoke-static {v4, v5, v6, v7}, Lcom/bykv/vk/openvk/component/video/Qhi/fl/Qhi;->Qhi(JJ)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->Qhi(JI)V

    .line 529
    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->iMK:Z

    return-void
.end method

.method static synthetic PER(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic Px(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Qe(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;J)J
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->zn:J

    return-wide p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method private Qhi(FFFFZ)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_0

    cmpg-float v1, p4, v0

    if-gtz v1, :cond_1

    .line 789
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac()I

    move-result p3

    int-to-float p3, p3

    .line 790
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ()I

    move-result p4

    int-to-float p4, p4

    :cond_1
    cmpg-float v1, p4, v0

    if-lez v1, :cond_8

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz p5, :cond_4

    cmpg-float p2, p3, p4

    if-gez p2, :cond_3

    return-void

    :cond_3
    mul-float/2addr p4, p1

    div-float/2addr p4, p3

    .line 808
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p1, p1

    float-to-int p3, p4

    invoke-direct {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_4
    cmpl-float p1, p3, p4

    if-lez p1, :cond_5

    return-void

    :cond_5
    mul-float/2addr p3, p2

    div-float/2addr p3, p4

    .line 819
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p3, p3

    float-to-int p2, p2

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object p2, p1

    :goto_0
    const/16 p1, 0xd

    .line 821
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 823
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 824
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object p1

    instance-of p1, p1, Landroid/view/TextureView;

    if-eqz p1, :cond_6

    .line 825
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 826
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_7

    .line 827
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 831
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/component/adexpress/CJ/tP;->Qhi(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    if-lez p3, :cond_8

    if-eqz p1, :cond_8

    .line 833
    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 834
    iget p2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 835
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;JJ)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(JJ)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Dww:Z

    return p1
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic ReL(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic Ri(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic SL(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic SNp(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic SO(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ip:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    return-object p0
.end method

.method static synthetic TKG(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    return-wide v0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic Ug(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    return-object p0
.end method

.method static synthetic Ura(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic VV(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->NFd()V

    return-void
.end method

.method static synthetic VnT(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->PAe:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic Wrw(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic XH(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic YB(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ip()Z

    move-result p0

    return p0
.end method

.method static synthetic YD(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    return-wide v0
.end method

.method static synthetic aP(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Dww:Z

    return p1
.end method

.method static synthetic bM(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic bxS(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method private cJ(JJ)V
    .locals 9

    .line 873
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(J)V

    .line 874
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    .line 875
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->NFd:J

    .line 876
    invoke-static {p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/Qhi/fl/Qhi;->Qhi(JJ)I

    move-result v7

    .line 877
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;JJI)V

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;JJ)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(JJ)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Dww:Z

    return p1
.end method

.method static synthetic cJP(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic cjC(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic dI(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->dIT()V

    return-void
.end method

.method static synthetic dIT(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method private dIT()V
    .locals 9

    .line 763
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez v0, :cond_0

    goto :goto_1

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->SL()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v1

    .line 767
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;)[I

    move-result-object v0

    .line 768
    aget v1, v0, v1

    int-to-float v4, v1

    .line 769
    aget v0, v0, v2

    int-to-float v5, v0

    .line 771
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ()I

    move-result v0

    int-to-float v6, v0

    .line 772
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->fl()I

    move-result v0

    int-to-float v7, v0

    move-object v3, p0

    .line 773
    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(FFFFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic dVA(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->MND()V

    return-void
.end method

.method static synthetic eG(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hpZ:Z

    return p0
.end method

.method static synthetic es(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic et(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic gT(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic gga(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hpZ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    return-object p0
.end method

.method static synthetic iMK(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic ip(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method private ip()Z
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic jPH(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method private jPH()Z
    .locals 2

    .line 658
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->NFd()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic js(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-object p0
.end method

.method static synthetic kYc(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic lB(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->es:J

    return-wide v0
.end method

.method static synthetic lG(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    return-wide v0
.end method

.method static synthetic mZ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    return-wide v0
.end method

.method static synthetic mz(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ne(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-object p0
.end method

.method static synthetic oU(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->FQ()V

    return-void
.end method

.method static synthetic ots(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method

.method static synthetic pA(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic pF(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    return-object p0
.end method

.method static synthetic pM(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic pv(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic qMt(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic rB(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic sDy(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-object p0
.end method

.method static synthetic tP(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic vml(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method static synthetic wp(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    return-object p0
.end method

.method static synthetic xyz(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method private xyz()V
    .locals 6

    .line 627
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 631
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 632
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ()I

    move-result v2

    int-to-float v2, v2

    .line 633
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->fl()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v0, v4

    div-float v5, v2, v5

    int-to-float v1, v1

    mul-float/2addr v4, v1

    div-float v4, v3, v4

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_1

    div-float v0, v1, v3

    mul-float/2addr v0, v2

    goto :goto_0

    :cond_1
    div-float v1, v0, v2

    mul-float/2addr v1, v3

    .line 644
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 645
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 647
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 648
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 649
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 653
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    const-string v2, "changeVideoSizeSupportInteraction error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic yN(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    return-object p0
.end method

.method private yN()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->sDy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ac(I)V

    .line 463
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->zn:J

    .line 466
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(I)V

    .line 467
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(I)V

    .line 468
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic yy(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-object p0
.end method

.method static synthetic zTC(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-object p0
.end method

.method static synthetic zc(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    return-object p0
.end method

.method static synthetic zjb(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->xyz()V

    return-void
.end method

.method static synthetic zn(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    return-object p0
.end method


# virtual methods
.method public CJ()V
    .locals 0

    .line 614
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac()V

    return-void
.end method

.method public Dww()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Jma()V
    .locals 3

    .line 570
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->yN:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh()V

    .line 572
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->fl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->ac(J)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/ac;Landroid/view/View;)V
    .locals 2

    .line 847
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez p1, :cond_0

    return-void

    .line 850
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Tgh()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 851
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi()V

    .line 852
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(ZZ)V

    .line 853
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Tgh()V

    return-void

    .line 855
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ROR()Z

    move-result p1

    if-nez p1, :cond_3

    .line 856
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_2

    .line 857
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(Landroid/view/ViewGroup;)V

    .line 859
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CJ(J)V

    .line 860
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_4

    .line 861
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(ZZ)V

    return-void

    .line 864
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ()V

    .line 865
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz p1, :cond_4

    .line 866
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ(ZZ)V

    :cond_4
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ip:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    return-void
.end method

.method public Qhi(ZI)V
    .locals 0

    .line 606
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac()V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z
    .locals 7

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 399
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    const-string v0, "playVideoUrl: already invoked"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    const-string v0, "No video info"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 409
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    const/4 v0, 0x1

    .line 410
    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac(I)V

    .line 411
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->lG:Z

    .line 413
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-eqz v2, :cond_5

    .line 415
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;->fl:I

    if-ne v2, v0, :cond_2

    .line 416
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->FQ:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->WAv(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->FQ:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->tP(Ljava/lang/String;)I

    move-result v2

    .line 420
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 421
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 424
    :try_start_0
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/iMK;->zc:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 425
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/iMK;->XyJ:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 426
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    sget-object v6, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v5, v3, v6}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 427
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    sget-object v5, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :catchall_0
    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-lez v2, :cond_4

    move v1, v0

    :cond_4
    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(ZF)V

    .line 437
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->NFd()V

    .line 439
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ROR()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 440
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ROR()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    .line 441
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->WAv:J

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->WAv:J

    .line 443
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v1, :cond_7

    .line 444
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi()V

    .line 445
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ROR()V

    .line 446
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->fl()I

    move-result v2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Tgh()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(II)V

    .line 448
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ac(Landroid/view/ViewGroup;)V

    .line 450
    :cond_7
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    .line 451
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;)V

    .line 452
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->tP()V

    .line 453
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->es:J

    .line 454
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->yN()V

    return v0
.end method

.method protected ROR(Z)V
    .locals 5

    .line 334
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "landingPageChangeVideoSize start......."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->jPH()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ()I

    move-result p1

    int-to-float p1, p1

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->fl()I

    move-result v0

    int-to-float v0, v0

    .line 342
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, p1

    float-to-int v3, v0

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 343
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 344
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 345
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v2

    instance-of v2, v2, Landroid/view/TextureView;

    if-eqz v2, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v2

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 351
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-lez v3, :cond_5

    .line 352
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    if-eqz v2, :cond_5

    mul-float/2addr p1, v3

    float-to-int p1, p1

    .line 354
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-float/2addr v0, v3

    float-to-int p1, v0

    .line 355
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 356
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object p1

    instance-of p1, p1, Landroid/view/TextureView;

    if-eqz p1, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 358
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_4

    .line 359
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;->fl:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 362
    iget p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 363
    iget p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi:Ljava/lang/String;

    const-string v1, "changeSize error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public ac()V
    .locals 3

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->zc()V

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    .line 590
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->hm()V

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->PAe:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 594
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->CJ()V

    :cond_2
    return-void
.end method

.method public cJ()V
    .locals 5

    .line 534
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi()V

    .line 536
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->pA()V

    .line 537
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->kYc()V

    .line 539
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ABk:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "resumeVideo:  mIsSurfaceValid = "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 540
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz v0, :cond_4

    .line 541
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ROR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 542
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ABk:Z

    if-eqz v0, :cond_2

    .line 543
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->EBS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->cJ(I)V

    .line 545
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->HzH()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hpZ:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(ZJZ)V

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->qMt()V

    goto :goto_0

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->sDy:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(Ljava/lang/Runnable;)V

    .line 552
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ABk:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "resumeVideo: isPaused = true , mIsSurfaceValid = "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    goto :goto_1

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hpZ:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(ZJZ)V

    .line 557
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->yN:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 558
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh()V

    .line 559
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 560
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 561
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->fl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->ac(J)V

    :cond_5
    return-void
.end method

.method public es()V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected kYc()V
    .locals 0

    return-void
.end method

.method public lG()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;II)V

    return-void
.end method

.method public zn()V
    .locals 2

    .line 919
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_0
    return-void
.end method
