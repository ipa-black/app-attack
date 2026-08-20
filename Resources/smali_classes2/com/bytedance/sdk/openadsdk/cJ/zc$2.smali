.class Lcom/bytedance/sdk/openadsdk/cJ/zc$2;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "LandingPageLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/cJ/zc;

.field final synthetic cJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/zc;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->ac:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->Qhi:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->cJ:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 724
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->pM()Lcom/bytedance/sdk/openadsdk/core/settings/Sf;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->ac:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->Qhi:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/zc;Lcom/bytedance/sdk/openadsdk/core/settings/Sf;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 729
    :cond_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;->cJ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 730
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->ac:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->cJ:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->Qhi:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/zc;ILjava/lang/String;)V

    return-void

    .line 733
    :cond_1
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;->ac:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 734
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;->ac:Ljava/lang/String;

    .line 735
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ROR/Qhi;->ac()Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    move-result-object v1

    .line 736
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->cJ(Ljava/lang/String;)V

    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 738
    const-string v2, "content-type"

    const-string v3, "application/json; charset=utf-8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->CJ(Ljava/util/Map;)V

    const/16 v0, 0x9

    .line 740
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(I)V

    .line 741
    const-string v0, "sendPrefLog"

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(Ljava/lang/String;)V

    .line 742
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/zc$2;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 759
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void
.end method
