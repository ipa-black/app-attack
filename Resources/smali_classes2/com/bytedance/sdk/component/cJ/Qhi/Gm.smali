.class public Lcom/bytedance/sdk/component/cJ/Qhi/Gm;
.super Ljava/lang/Object;
.source "NetRequestHttpTime.java"


# instance fields
.field public CJ:J

.field public Qhi:J

.field public ROR:J

.field public Sf:J

.field public Tgh:J

.field public ac:J

.field public cJ:J

.field public fl:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ac/Qhi/Qhi;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->CJ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->Qhi:J

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->iMK()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->cJ:J

    .line 24
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->ROR()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->ac:J

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Sf()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->CJ:J

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->hm()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->fl:J

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->WAv()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->ROR:J

    .line 28
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->zc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->Sf:J

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Tgh()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->Tgh:J

    :cond_0
    return-void
.end method
