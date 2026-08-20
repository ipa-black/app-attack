.class Lcom/bytedance/sdk/openadsdk/hpZ/ROR$41;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/hpZ/ROR$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/hpZ/ROR;->ac()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/hpZ/ROR;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/ROR$41;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/ROR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 853
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/ROR$41;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/hpZ/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/ROR;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object p1

    .line 854
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 855
    const-string v1, "code"

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 856
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0

    .line 859
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pM()V

    const/4 p1, 0x1

    .line 860
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
