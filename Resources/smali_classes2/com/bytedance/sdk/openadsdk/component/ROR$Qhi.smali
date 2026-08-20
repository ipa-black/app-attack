.class Lcom/bytedance/sdk/openadsdk/component/ROR$Qhi;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "TTAppOpenAdCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/ROR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Qhi"
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/ROR;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/component/ROR;

    .line 790
    const-string p1, "App Open Ad Write Cache"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    .line 791
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->mZ()Lorg/json/JSONObject;

    move-result-object v0

    .line 799
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Qhi;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    const-string v1, "tt_openad_materialMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "material"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;->Qhi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
