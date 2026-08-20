.class Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Sf;
.super Ljava/lang/Object;
.source "GetExecutorWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Tgh/Qhi/fl/ac;


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/component/ROR/cJ/cJ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/Qhi;->ac()Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Sf;->Qhi:Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    const/4 v1, 0x7

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(I)V

    .line 17
    const-string v1, "track_url"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/component/Tgh/Qhi/fl/fl;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Sf;->Qhi:Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi()Lcom/bytedance/sdk/component/ROR/cJ;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/WAv;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/WAv;-><init>(Lcom/bytedance/sdk/component/ROR/cJ;)V

    return-object v1
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Sf;->Qhi:Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->cJ(Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Sf;->Qhi:Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
