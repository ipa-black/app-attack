.class Lcom/bytedance/sdk/openadsdk/core/NFd$5;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/NFd;->clickEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lorg/json/JSONObject;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$5;->Qhi:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1047
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$5;->Qhi:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac(Lorg/json/JSONObject;)V

    return-void
.end method
