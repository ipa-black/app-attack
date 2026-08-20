.class Lcom/bytedance/sdk/openadsdk/core/MQ$4;
.super Lcom/bytedance/sdk/component/ROR/Qhi/cJ;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

.field final synthetic ROR:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

.field final synthetic Sf:I

.field final synthetic Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

.field final synthetic WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

.field final synthetic ac:Ljava/util/Map;

.field final synthetic cJ:Z

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic hm:Lcom/bytedance/sdk/openadsdk/core/model/qMt;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/cJ;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;ILcom/bytedance/sdk/openadsdk/core/model/qMt;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->cJ:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ac:Ljava/util/Map;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ROR:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    iput p9, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Sf:I

    iput-object p10, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->hm:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 12

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 511
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->cJ()V

    .line 512
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->cJ:Z

    if-eqz p1, :cond_0

    .line 513
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ac:Ljava/util/Map;

    const-string v0, "pgad_end"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_a

    .line 516
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 518
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/MQ$4$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/MQ$4$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ$4;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->cJ(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V

    .line 531
    sget-object p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->cJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 532
    sget-object p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->Qhi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 534
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v5

    .line 535
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p1

    .line 536
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cjC()Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/pM;->ROR()I

    move-result v2

    if-ne v2, v11, :cond_1

    .line 538
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    const-string v3, "Pangle_Debug_Mode"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 542
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    .line 546
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ROR:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    .line 547
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->ROR()J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 548
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->Tgh:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 549
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->ac()V

    .line 550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 551
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 552
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    .line 553
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    return-void

    .line 557
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->hm:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;

    move-result-object v2

    .line 558
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->WAv:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Ljava/util/ArrayList;)V

    .line 561
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->hm:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;Ljava/lang/String;)V

    .line 562
    iget v3, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->CJ:I

    const/16 v4, 0x4e20

    if-eq v3, v4, :cond_4

    .line 563
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    iget v1, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->CJ:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 565
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->lG()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->CJ:I

    const v1, 0x9c5d

    if-ne v0, v1, :cond_3

    .line 567
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ROR:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    const/16 v1, -0x64

    .line 568
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ROR:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    iget v1, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->CJ:I

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->fl:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    .line 573
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    .line 574
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->ROR()J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    iget v0, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Tgh:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 575
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->Tgh:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 576
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->ac()V

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 578
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 579
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    .line 580
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    return-void

    .line 583
    :cond_4
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    if-nez v3, :cond_5

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ROR:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    .line 585
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->ROR()J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 586
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->fl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 587
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->ac()V

    .line 588
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 589
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 590
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    .line 591
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    return-void

    .line 594
    :cond_5
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac(Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v7

    .line 597
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->hm:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    if-eqz v1, :cond_6

    .line 598
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->hm:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    iget v4, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Qhi:I

    invoke-virtual {v1, v3, v5, v4, v7}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/utils/Jma;ILcom/bytedance/sdk/openadsdk/utils/Jma;)V

    .line 600
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ROR:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-interface {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    .line 601
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    .line 604
    iget-object v1, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 606
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/fl/cJ;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi(Ljava/util/Map;)V

    .line 609
    :cond_7
    iget-object v1, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    .line 610
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 611
    iget-object v1, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 612
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Sf:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object v9

    .line 613
    iget-object v0, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ROR()Z

    move-result v10

    .line 614
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/Gm;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->hm:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    iget v6, v2, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Qhi:I

    move-object v2, v0

    invoke-static/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/component/cJ/Qhi/Gm;Lcom/bytedance/sdk/openadsdk/core/model/qMt;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/utils/Jma;ILcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Z)V

    .line 615
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->CJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 617
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->ac()V

    .line 618
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 619
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 620
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    .line 621
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 623
    const-string v0, "NetApiImpl"

    const-string v1, "get ad error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ROR:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    .line 626
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->ROR()J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 627
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->fl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 628
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->ac()V

    .line 629
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 630
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 631
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p2

    .line 632
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    .line 633
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    return-void

    .line 637
    :cond_9
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/MQ$4$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/MQ$4$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ$4;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->ac(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V

    .line 649
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result p1

    .line 650
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v1

    .line 651
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ROR:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    invoke-interface {v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    .line 653
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 654
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    .line 655
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->ROR()J

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 656
    sget-object v2, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->Sf:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 657
    sget-object v2, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 658
    sget-object v2, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->Qhi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 659
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->fl()V

    .line 660
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->Qhi(ILjava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->ac()V

    .line 662
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    :cond_a
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 4

    .line 671
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/MQ$4$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/MQ$4$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ$4;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->ac(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V

    .line 684
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->cJ()V

    if-eqz p3, :cond_0

    .line 687
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 689
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 688
    :cond_1
    const-string p1, ""

    .line 691
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v0

    .line 692
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->cJ:Z

    if-eqz v1, :cond_2

    .line 693
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ac:Ljava/util/Map;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "pgad_end"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cjC()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/pM;->ROR()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    if-eqz p2, :cond_3

    .line 696
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 698
    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->WAv:Lcom/bytedance/sdk/openadsdk/core/MQ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Pangle_Debug_Mode"

    invoke-static {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 702
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result p2

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 703
    instance-of p2, p2, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_6

    const/16 p2, 0x25a

    goto :goto_2

    :cond_6
    const/16 p2, 0x259

    .line 706
    :goto_2
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->ROR:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    if-eqz p3, :cond_7

    .line 707
    invoke-interface {p3, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    .line 709
    :cond_7
    const-string p3, "onFailure: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p3, v1}, [Ljava/lang/Object;

    .line 711
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 712
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    .line 714
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->CJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)J

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 715
    sget-object p3, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 716
    sget-object p3, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->Qhi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 717
    sget-object p3, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->ROR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 718
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->fl()V

    .line 719
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->Qhi(ILjava/lang/String;)V

    .line 720
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->ac()V

    .line 721
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$4;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    return-void
.end method
