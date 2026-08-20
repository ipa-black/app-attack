.class public Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;
.super Lcom/bytedance/sdk/component/adexpress/cJ/iMK;
.source "UGRenderRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;
    }
.end annotation


# instance fields
.field private CJ:F

.field private Qhi:Lorg/json/JSONObject;

.field private ac:F

.field private cJ:Lcom/bytedance/adsdk/ugeno/core/HzH;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;-><init>(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)V

    .line 20
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->Qhi:Lorg/json/JSONObject;

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;)Lcom/bytedance/adsdk/ugeno/core/HzH;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->cJ:Lcom/bytedance/adsdk/ugeno/core/HzH;

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->ac(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->ac:F

    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->CJ:F

    return-void
.end method


# virtual methods
.method public Eh()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->CJ:F

    return v0
.end method

.method public NFd()Lcom/bytedance/adsdk/ugeno/core/HzH;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->cJ:Lcom/bytedance/adsdk/ugeno/core/HzH;

    return-object v0
.end method

.method public aP()Lorg/json/JSONObject;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->Qhi:Lorg/json/JSONObject;

    return-object v0
.end method

.method public pM()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->ac:F

    return v0
.end method
