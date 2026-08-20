.class Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi$2;
.super Ljava/lang/Object;
.source "DoGetAdsFromNetworkAsyncMethod.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/WAv/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Qhi/ROR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;)V"
        }
    .end annotation

    .line 64
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 66
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    .line 67
    const-string p2, "creatives"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;Ljava/lang/Object;)V

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
