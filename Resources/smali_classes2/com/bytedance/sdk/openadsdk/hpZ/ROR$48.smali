.class Lcom/bytedance/sdk/openadsdk/hpZ/ROR$48;
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

    .line 946
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/ROR$48;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/ROR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/ROR$48;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/ROR;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object v0

    .line 950
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 951
    const-string v2, "code"

    if-nez v0, :cond_0

    const/4 p1, -0x1

    .line 952
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    .line 955
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Tgh(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 956
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method
