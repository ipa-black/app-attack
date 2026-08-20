.class public Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;
.super Ljava/lang/Object;
.source "BaseEventModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private CJ:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private ac:Lorg/json/JSONObject;

.field private cJ:Ljava/lang/String;

.field private fl:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "TT;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->fl:Z

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 23
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->cJ:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->ac:Lorg/json/JSONObject;

    .line 25
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;

    return-object v0
.end method

.method public Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object v0
.end method

.method public Qhi(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->fl:Z

    return-void
.end method

.method public ac()Lorg/json/JSONObject;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->ac:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->ac:Lorg/json/JSONObject;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->ac:Lorg/json/JSONObject;

    return-object v0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public fl()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->fl:Z

    return v0
.end method
