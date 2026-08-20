.class public Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;
.super Ljava/lang/Object;
.source "BrowserLogModel.java"


# instance fields
.field private CJ:I

.field private Qhi:Ljava/lang/String;

.field private ROR:I

.field private Sf:I

.field private Tgh:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private fl:Z

.field private hm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Sf:I

    .line 22
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->hm:I

    return-void
.end method


# virtual methods
.method public CJ()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->CJ:I

    return v0
.end method

.method public CJ(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->hm:I

    return-void
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->CJ:I

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi:Ljava/lang/String;

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->fl:Z

    return-void
.end method

.method public ROR()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->ROR:I

    return v0
.end method

.method public Sf()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Sf:I

    return v0
.end method

.method public Tgh()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Tgh:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->ac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    .line 43
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->ac:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public ac(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Sf:I

    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Tgh:Ljava/lang/String;

    return-void
.end method

.method public cJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object v0
.end method

.method public cJ(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->ROR:I

    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->ac:Ljava/lang/String;

    return-void
.end method

.method public fl()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->fl:Z

    return v0
.end method

.method public hm()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->hm:I

    return v0
.end method
