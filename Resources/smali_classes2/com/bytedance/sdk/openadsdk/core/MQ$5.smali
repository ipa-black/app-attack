.class Lcom/bytedance/sdk/openadsdk/core/MQ$5;
.super Lcom/bytedance/sdk/component/ROR/Qhi/cJ;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;Lcom/bytedance/sdk/component/ROR/cJ/fl;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

.field final synthetic Qhi:Z

.field final synthetic ROR:Lcom/bytedance/sdk/openadsdk/core/MQ;

.field final synthetic Tgh:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/utils/Jma;

.field final synthetic cJ:Ljava/util/Map;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/MQ;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->ROR:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->Qhi:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->cJ:Ljava/util/Map;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->ac:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 3

    .line 730
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->Qhi:Z

    if-eqz p1, :cond_0

    .line 731
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->cJ:Ljava/util/Map;

    const-string v0, "pgad_end"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->ac:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_6

    .line 734
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    .line 736
    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p2

    .line 737
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 738
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cjC()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/pM;->ROR()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 739
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 741
    const-string v1, "Pangle_Debug_Mode"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->ROR:Lcom/bytedance/sdk/openadsdk/core/MQ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 745
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->ROR:Lcom/bytedance/sdk/openadsdk/core/MQ;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_2

    .line 747
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    return-void

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->fl:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    invoke-static {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;)Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;

    move-result-object v0

    .line 751
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->CJ:I

    const/16 v2, 0x4e20

    if-eq v1, v2, :cond_4

    .line 753
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->lG()Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, v0, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->CJ:I

    const v1, 0x9c5d

    if-ne p2, v1, :cond_3

    .line 755
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    const/16 v0, -0x64

    .line 756
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    .line 755
    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    return-void

    .line 759
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->CJ:I

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->fl:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    return-void

    .line 763
    :cond_4
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    if-nez v1, :cond_5

    .line 764
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    return-void

    .line 768
    :cond_5
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac(Ljava/lang/String;)V

    .line 769
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;-><init>()V

    invoke-interface {p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    .line 770
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->ROR:Lcom/bytedance/sdk/openadsdk/core/MQ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 772
    const-string v0, "NetApiImpl"

    const-string v1, "get ad error: "

    invoke-static {v0, v1, p2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 773
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 3

    .line 782
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object p1

    .line 783
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->Qhi:Z

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->cJ:Ljava/util/Map;

    iget-wide v1, p1, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "pgad_end"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cjC()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/pM;->ROR()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 787
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 789
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->ROR:Lcom/bytedance/sdk/openadsdk/core/MQ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Pangle_Debug_Mode"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 792
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result p2

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 797
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 796
    :cond_4
    const-string p1, ""

    .line 799
    :goto_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;

    const/16 p3, 0x259

    invoke-interface {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    return-void
.end method
