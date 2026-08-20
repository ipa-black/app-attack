.class public Lcom/bytedance/sdk/openadsdk/core/model/hpZ;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private CJ:D

.field private Qhi:Ljava/lang/String;

.field private Tgh:Ljava/lang/String;

.field private ac:I

.field private cJ:I

.field private fl:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CJ()D
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->CJ:D

    return-wide v0
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ:I

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi:Ljava/lang/String;

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->fl:Z

    return-void
.end method

.method public ROR()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Tgh:Ljava/lang/String;

    return-object v0
.end method

.method public Tgh()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->fl:Z

    return v0
.end method

.method public ac()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ac:I

    return v0
.end method

.method public cJ()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ:I

    return v0
.end method

.method public cJ(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ac:I

    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Tgh:Ljava/lang/String;

    return-void
.end method

.method public fl()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ac:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
