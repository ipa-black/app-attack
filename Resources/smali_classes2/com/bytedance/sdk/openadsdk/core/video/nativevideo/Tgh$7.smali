.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "NativeVideoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

.field final synthetic Qhi:I

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->Qhi:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->cJ:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 757
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 759
    :try_start_0
    const-string v1, "error_code"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->Qhi:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 760
    const-string v1, "description"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->Qhi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->cJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    const-string v1, "url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result v1

    .line 768
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 770
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$7;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->CQU:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string v3, "load_vast_icon_fail"

    invoke-static {v2, v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
