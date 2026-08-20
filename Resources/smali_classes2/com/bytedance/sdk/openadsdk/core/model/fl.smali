.class public Lcom/bytedance/sdk/openadsdk/core/model/fl;
.super Ljava/lang/Object;
.source "AppOpenAdControl.java"


# instance fields
.field private Qhi:I

.field private ac:J

.field private cJ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/fl;->Qhi:I

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/fl;->cJ:I

    return-void
.end method


# virtual methods
.method public Qhi()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/fl;->Qhi:I

    return v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/fl;->Qhi:I

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/fl;->ac:J

    return-void
.end method

.method public ac()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/fl;->ac:J

    return-wide v0
.end method

.method public cJ()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/fl;->cJ:I

    return v0
.end method

.method public cJ(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/fl;->cJ:I

    return-void
.end method
