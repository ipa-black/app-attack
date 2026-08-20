.class public Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;
.super Lcom/bytedance/sdk/component/Qhi/Tgh;
.source "OneSlotMultipleAdJSMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/Qhi/Tgh<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

.field private final cJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Qhi/Tgh;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 21
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;->cJ:Ljava/lang/String;

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V
    .locals 2

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;

    const-string v1, "endcardDynamicCreatives"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Qhi/kYc;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Tgh;)Lcom/bytedance/sdk/component/Qhi/kYc;

    .line 26
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;

    const-string v1, "multiOpenCovert"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/Qhi/kYc;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Tgh;)Lcom/bytedance/sdk/component/Qhi/kYc;

    return-void
.end method


# virtual methods
.method public bridge synthetic Qhi(Ljava/lang/Object;Lcom/bytedance/sdk/component/Qhi/ROR;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Qhi/ROR;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Qhi/ROR;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    const-string p2, "endcardDynamicCreatives"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;->cJ:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    const-string p2, "multiOpenCovert"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;->cJ:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 34
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Tgh(Lorg/json/JSONObject;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
