.class public Lcom/bytedance/sdk/openadsdk/core/kYc;
.super Ljava/lang/Object;
.source "JsbDeepLinkJump.java"


# direct methods
.method public static Qhi(Landroid/content/Context;ZLorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILandroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/ac;)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p6

    .line 38
    const-string v3, "landingStyle"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 39
    const-string v4, "url"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    const-string v5, "fallback_url"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 42
    :try_start_0
    const-string v9, "is_activity"

    move v10, p1

    invoke-virtual {p2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v9, 0x1

    .line 48
    invoke-static {v6, v7, v9, p2}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 56
    invoke-static {v6, v7, v1, v11}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 58
    :cond_1
    invoke-static {v6, v7, v10, v11}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    if-eq v3, v9, :cond_7

    const/16 v12, 0x8

    if-ne v3, v12, :cond_3

    goto :goto_0

    :cond_3
    if-ne v3, v1, :cond_4

    .line 75
    invoke-static {p0, v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/MQ;->cJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 76
    new-instance v1, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;-><init>()V

    .line 77
    sget-object v3, Lcom/bytedance/sdk/openadsdk/cJ/cJ$Qhi;->cJ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 79
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(I)V

    .line 81
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Z)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ(I)V

    .line 83
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string v2, "deeplink_url"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v1, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "jsb_deeplink"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "open_fallback_url"

    invoke-static {v6, v7, v2, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    sget-object v1, Lcom/bytedance/sdk/openadsdk/cJ/cJ$Qhi;->cJ:Ljava/lang/String;

    invoke-static {p0, v8, v6, v1}, Lcom/bytedance/sdk/openadsdk/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    const/4 v8, 0x3

    if-ne v3, v8, :cond_6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v4

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p4

    .line 94
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/lB;->cJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    invoke-static {v6, v7, v8, v11}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_5
    const/4 v0, -0x2

    .line 97
    invoke-static {v6, v7, v0, v11}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_6
    move v9, v2

    goto :goto_1

    .line 62
    :cond_7
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;-><init>()V

    .line 63
    sget-object v3, Lcom/bytedance/sdk/openadsdk/cJ/cJ$Qhi;->cJ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 65
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(I)V

    .line 67
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Z)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ(I)V

    .line 69
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    .line 72
    sget-object v1, Lcom/bytedance/sdk/openadsdk/cJ/cJ$Qhi;->cJ:Ljava/lang/String;

    invoke-static {p0, v4, v6, v1}, Lcom/bytedance/sdk/openadsdk/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Z

    :cond_8
    :goto_1
    if-eqz p7, :cond_9

    if-eqz v9, :cond_9

    .line 103
    invoke-interface/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/core/widget/ac;->Qhi()V

    :cond_9
    return-void
.end method
