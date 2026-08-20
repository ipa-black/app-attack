.class Lcom/bytedance/sdk/openadsdk/ABk/Tgh;
.super Ljava/lang/Object;
.source "MonitorModelGeneratorWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ABk/fl;


# instance fields
.field private CJ:I

.field Qhi:J

.field private ac:I

.field private cJ:Lcom/bytedance/sdk/openadsdk/ABk/fl;

.field private fl:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ABk/fl;III)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/fl;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;->Qhi:J

    .line 23
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;->ac:I

    .line 24
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;->CJ:I

    .line 25
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;->fl:I

    return-void
.end method


# virtual methods
.method public generatorModel()Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/fl;->generatorModel()Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    move-result-object v0

    .line 32
    const-string v1, "6.2.0.6"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi(Ljava/lang/String;)V

    .line 33
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;->ac:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi(I)V

    .line 34
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;->CJ:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ(I)V

    .line 35
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;->fl:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac(I)V

    .line 36
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;->Qhi:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ(J)V

    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/hm;->fl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Tgh(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->CJ()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->CJ(I)V

    return-object v0
.end method
