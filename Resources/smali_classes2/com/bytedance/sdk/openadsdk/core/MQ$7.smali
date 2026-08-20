.class Lcom/bytedance/sdk/openadsdk/core/MQ$7;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/MQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/MQ;)V
    .locals 0

    .line 1161
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ$7;->Qhi:Lcom/bytedance/sdk/openadsdk/core/MQ;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1164
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1165
    const-string p1, "onResponse: "

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 0

    .line 1174
    const-string p1, "onFailure: "

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    return-void
.end method
