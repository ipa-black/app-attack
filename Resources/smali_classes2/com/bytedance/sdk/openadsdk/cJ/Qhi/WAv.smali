.class Lcom/bytedance/sdk/openadsdk/cJ/Qhi/WAv;
.super Ljava/lang/Object;
.source "NetResponseWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Tgh/Qhi/fl/fl;


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/component/ROR/cJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/WAv;->Qhi:Lcom/bytedance/sdk/component/ROR/cJ;

    return-void
.end method


# virtual methods
.method public Qhi()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/WAv;->Qhi:Lcom/bytedance/sdk/component/ROR/cJ;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/WAv;->Qhi:Lcom/bytedance/sdk/component/ROR/cJ;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public cJ()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/WAv;->Qhi:Lcom/bytedance/sdk/component/ROR/cJ;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
