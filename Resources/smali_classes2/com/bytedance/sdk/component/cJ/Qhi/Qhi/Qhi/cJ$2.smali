.class Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;
.super Lcom/bytedance/sdk/component/Sf/ac/cJ;
.source "NetCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/ac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/ac;

.field final synthetic cJ:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;ILjava/lang/String;Lcom/bytedance/sdk/component/cJ/Qhi/ac;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;

    iput-object p4, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/ac;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/Sf/ac/cJ;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/ac;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/cJ;Ljava/io/IOException;)V

    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/ac;

    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/ac;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/cJ;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 218
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/ac;

    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/ac;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/cJ;Ljava/io/IOException;)V

    return-void
.end method
