.class Lcom/bytedance/sdk/openadsdk/cJ/zc$2$1;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "LandingPageLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/cJ/zc$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/zc$2;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/zc$2;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 1

    .line 746
    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;->cJ:Ljava/lang/String;

    .line 747
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/zc$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->ac:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/zc$2;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->cJ:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/zc$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;->Qhi:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/zc;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 749
    const-string p2, "LandingPageLog"

    const-string v0, "TTWebViewClient : onPageFinished"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method
