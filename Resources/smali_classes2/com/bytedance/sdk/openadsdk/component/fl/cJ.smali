.class public Lcom/bytedance/sdk/openadsdk/component/fl/cJ;
.super Ljava/lang/Object;
.source "TTAppOpenAdCallBackResult.java"


# instance fields
.field private CJ:I

.field private Qhi:I

.field private Tgh:Z

.field private ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private cJ:I

.field private fl:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->Qhi:I

    .line 39
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->cJ:I

    .line 40
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->CJ:I

    .line 41
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->fl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->Qhi:I

    .line 33
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->cJ:I

    .line 34
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object v0
.end method

.method public Qhi(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->Tgh:Z

    return-void
.end method

.method public Qhi()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->Tgh:Z

    return v0
.end method

.method public Tgh()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->fl:Ljava/lang/String;

    return-object v0
.end method

.method public ac()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->cJ:I

    return v0
.end method

.method public cJ()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->Qhi:I

    return v0
.end method

.method public fl()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->CJ:I

    return v0
.end method
