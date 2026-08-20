.class public Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;
.super Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;
.source "UGRenderRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field private CJ:F

.field private Qhi:Lorg/json/JSONObject;

.field private ac:F

.field private cJ:Lcom/bytedance/adsdk/ugeno/core/HzH;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;-><init>()V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->CJ:F

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;)Lorg/json/JSONObject;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->Qhi:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->ac:F

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;)Lcom/bytedance/adsdk/ugeno/core/HzH;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->cJ:Lcom/bytedance/adsdk/ugeno/core/HzH;

    return-object p0
.end method


# virtual methods
.method public synthetic Qhi()Lcom/bytedance/sdk/component/adexpress/cJ/iMK;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    move-result-object v0

    return-object v0
.end method

.method public Qhi(F)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;
    .locals 0

    .line 60
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->ac:F

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/HzH;)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->cJ:Lcom/bytedance/adsdk/ugeno/core/HzH;

    return-object p0
.end method

.method public Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->Qhi:Lorg/json/JSONObject;

    return-object p0
.end method

.method public cJ(F)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;
    .locals 0

    .line 65
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->CJ:F

    return-object p0
.end method

.method public cJ()Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;
    .locals 1

    .line 72
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;)V

    return-object v0
.end method
