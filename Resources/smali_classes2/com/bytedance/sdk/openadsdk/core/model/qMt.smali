.class public Lcom/bytedance/sdk/openadsdk/core/model/qMt;
.super Ljava/lang/Object;
.source "NetExtParams.java"


# instance fields
.field public CJ:I

.field public final Qhi:Ljava/lang/String;

.field public ROR:Lorg/json/JSONObject;

.field public Sf:I

.field public Tgh:Z

.field public WAv:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

.field public ac:I

.field public cJ:I

.field public fl:Lorg/json/JSONArray;

.field public final hm:Lcom/bytedance/sdk/openadsdk/utils/Jma;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Qhi:Ljava/lang/String;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->cJ:I

    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->ac:I

    .line 21
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->CJ:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->fl:Lorg/json/JSONArray;

    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->ROR:Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Sf:I

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->hm:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    return-void
.end method
