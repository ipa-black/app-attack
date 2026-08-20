.class public Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/cJ;
.super Ljava/lang/Object;
.source "DeepLinkUtils.java"


# direct methods
.method private static Qhi(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 105
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_0

    const/high16 p0, 0x10000000

    .line 110
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 114
    const-string p1, "DeepLinkUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "auto_click"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Sf(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "can_query_install"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 10

    .line 38
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 39
    invoke-static {p2, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 40
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/cJ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Sf(Landroid/content/Context;)Z

    move-result v3

    .line 48
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string v6, "url"

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string p1, "can_query_install"

    const-string v6, "intent"

    if-eqz v3, :cond_2

    .line 53
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ(Landroid/content/Context;Landroid/content/Intent;)Lcom/bytedance/sdk/openadsdk/utils/js$cJ;

    move-result-object v7

    .line 54
    iget v8, v7, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->cJ:I

    if-lez v8, :cond_1

    .line 56
    :try_start_0
    invoke-static {p0, p2, v5}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/cJ;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/util/Map;)V

    .line 57
    const-string v8, "matched_count"

    iget v9, v7, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->cJ:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v8, v7, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->Qhi:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    .line 59
    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->Qhi:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    .line 62
    const-string v8, "DeepLinkUtils"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 p1, -0x3

    .line 75
    invoke-static {p2, v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    return v4

    .line 81
    :cond_2
    :goto_0
    :try_start_2
    const-string v7, "open_url_app"

    invoke-static {p2, v0, v7, v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi()Lcom/bytedance/sdk/openadsdk/cJ/ABk;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/cJ/ABk;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    .line 84
    const-string p0, "dp_start_act_success"

    invoke-static {p0, p2, v0, v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :catchall_1
    move-exception p0

    .line 87
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 89
    :try_start_3
    const-string v5, "exception"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const/4 p0, -0x4

    .line 97
    invoke-static {p2, v0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    return v4

    .line 43
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->CJ()Lorg/json/JSONObject;

    move-result-object p0

    const/4 p1, -0x2

    invoke-static {p2, v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    return v4
.end method
