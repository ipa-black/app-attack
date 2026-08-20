.class public Lcom/bytedance/sdk/openadsdk/hm/Qhi/Sf;
.super Lcom/bytedance/sdk/component/Qhi/Tgh;
.source "PlayableEndCardOverlayMethod.java"


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


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/NFd;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Qhi/Tgh;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Sf;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Sf;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    const-string p1, "overlayRenderFinish"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/Qhi/kYc;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Tgh;)Lcom/bytedance/sdk/component/Qhi/kYc;

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

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Sf;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Qhi/ROR;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Qhi/ROR;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->zc()V

    const/4 p1, 0x0

    return-object p1
.end method
