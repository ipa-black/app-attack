.class Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;
.super Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;
.source "LandingPageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/HzH;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;IZLcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 6

    .line 179
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/Gm;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Gm;)V

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi(Ljava/util/Map;)V

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Tgh(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 189
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
