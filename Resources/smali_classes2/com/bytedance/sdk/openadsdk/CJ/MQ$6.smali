.class Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;
.super Ljava/lang/Object;
.source "FeatureCaculateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/CJ/MQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 240
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 243
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->fl()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "common"

    if-eqz v2, :cond_4

    .line 244
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 245
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 246
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;I)I

    .line 248
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 249
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v7, 0x0

    .line 252
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    if-ge v7, v5, :cond_1

    .line 253
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->cJ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 256
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 257
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    if-eqz v6, :cond_2

    .line 259
    invoke-virtual {v6, v1}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 260
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 261
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 267
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 271
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 272
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->ac(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 275
    :try_start_5
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    .line 281
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->fl(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->CJ(Lcom/bytedance/sdk/openadsdk/CJ/MQ;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->CJ()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
