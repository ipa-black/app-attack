.class Lcom/bytedance/sdk/openadsdk/core/NFd$8;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/WAv/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lorg/json/JSONObject;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/NFd;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;)V
    .locals 0

    .line 1419
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$8;->ac:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$8;->Qhi:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$8;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;

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

    if-eqz p1, :cond_0

    .line 1424
    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1425
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$8;->Qhi:Lorg/json/JSONObject;

    const-string v0, "creatives"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1426
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$8;->ac:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$8;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->cJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$8;->Qhi:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 1430
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$8;->ac:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$8;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->cJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$8;->Qhi:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
