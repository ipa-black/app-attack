.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$7;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 576
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$7;->Qhi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 4

    .line 579
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 580
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 582
    :try_start_0
    const-string v2, "error_code"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$7;->Qhi:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 583
    const-string v2, "check_url"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->pF()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 584
    const-string v2, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method
