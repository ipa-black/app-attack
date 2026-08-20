.class public Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
.super Ljava/lang/Object;
.source "AdSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/AdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ABk:Z

.field private final CJ:Z

.field private EBS:Ljava/lang/String;

.field private Gm:F

.field private HzH:Ljava/lang/String;

.field private MQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Qhi:Ljava/lang/String;

.field private final ROR:I

.field private Sf:Ljava/lang/String;

.field private final Tgh:Ljava/lang/String;

.field private WAv:I

.field private ac:I

.field private bxS:I

.field private cJ:I

.field private fl:I

.field private hm:Ljava/lang/String;

.field private hpZ:Ljava/lang/String;

.field private iMK:Ljava/lang/String;

.field private kYc:Ljava/lang/String;

.field private pA:Ljava/lang/String;

.field private qMt:Landroid/os/Bundle;

.field private tP:Z

.field private zc:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    .line 374
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->cJ:I

    const/16 v0, 0x140

    .line 375
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->ac:I

    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->CJ:Z

    .line 377
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->fl:I

    .line 378
    const-string v1, ""

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Tgh:Ljava/lang/String;

    const/4 v1, 0x0

    .line 379
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->ROR:I

    .line 381
    const-string v1, "defaultUser"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->hm:Ljava/lang/String;

    .line 394
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->tP:Z

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->MQ:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 3

    .line 529
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;-><init>(Lcom/bytedance/sdk/openadsdk/AdSlot$1;)V

    .line 530
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Qhi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 531
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->fl:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    const/4 v1, 0x1

    .line 532
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 533
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->cJ:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 534
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->ac:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->ac(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 536
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Gm:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 537
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->cJ:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 538
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->ac:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    goto :goto_0

    .line 540
    :cond_0
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 541
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->zc:F

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 543
    :goto_0
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    .line 544
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->CJ(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 545
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Sf:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->ac(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->hm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->CJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->WAv:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->fl(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 548
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->tP:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 549
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->ABk:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->ac(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 550
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->iMK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->fl(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->pA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Tgh(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->hpZ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->ROR(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->HzH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sf(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 554
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->kYc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->hm(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->MQ:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/util/Map;)Ljava/util/Map;

    .line 556
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->EBS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->WAv(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 557
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->bxS:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Tgh(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    return-object v0
.end method

.method public isExpressAd(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 427
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->ABk:Z

    return-object p0
.end method

.method public setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    move p1, v0

    .line 468
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->fl:I

    return-object p0
.end method

.method public setAdId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->pA:Ljava/lang/String;

    return-object p0
.end method

.method public setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method public setCreativeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->hpZ:Ljava/lang/String;

    return-object p0
.end method

.method public setDurationSlotType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 444
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->bxS:I

    return-object p0
.end method

.method public setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 438
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Gm:F

    .line 439
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->zc:F

    return-object p0
.end method

.method public setExt(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->HzH:Ljava/lang/String;

    return-object p0
.end method

.method public setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 432
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->cJ:I

    .line 433
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->ac:I

    return-object p0
.end method

.method public setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 417
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->tP:Z

    return-object p0
.end method

.method public setLinkId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->EBS:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Sf:Ljava/lang/String;

    return-object p0
.end method

.method public setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 493
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->WAv:I

    return-object p0
.end method

.method public setNetworkExtrasBundle(Landroid/os/Bundle;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->qMt:Landroid/os/Bundle;

    return-object p0
.end method

.method public setRequestExtraMap(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;"
        }
    .end annotation

    .line 514
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->MQ:Ljava/util/Map;

    return-object p0
.end method

.method public setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setUserData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->kYc:Ljava/lang/String;

    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->hm:Ljava/lang/String;

    return-object p0
.end method

.method public withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 1

    .line 498
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 501
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ABk;->CJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/api/Tgh/cJ;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    .line 504
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->iMK:Ljava/lang/String;

    return-object p0
.end method
