.class Lcom/bytedance/sdk/openadsdk/core/settings/HzH$8;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;Ljava/lang/String;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$8;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$8;->Qhi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$8;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    move-result-object v0

    const-string v1, "dyn_draw_engine_url"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zTC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$8;->Qhi:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 702
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Tgh;->cJ()Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Tgh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/Tgh;->ac()V

    return-void
.end method
