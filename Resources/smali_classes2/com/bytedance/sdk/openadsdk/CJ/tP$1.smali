.class Lcom/bytedance/sdk/openadsdk/CJ/tP$1;
.super Ljava/lang/Object;
.source "FeatureCaculateConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/CJ/tP;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 46
    const-string v0, "&"

    const-string v1, "1,3,5&session"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    const-string v3, "feature_switch"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z

    .line 47
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 51
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    const-string v3, "feature_timer_interval"

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;I)I

    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    const-string v3, "enable_feature_cids"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z

    .line 53
    const-string v2, "pag_ad_show_cnt"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "pag_ad_click_cnt"

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string v5, "pag_video_play_cnt"

    invoke-static {v5, v1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 56
    const-string v6, "pag_dislike_cnt"

    const-string v7, "1,3,5session"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 57
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v7, v2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z

    .line 58
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v7, v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->CJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z

    .line 59
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v7, v5}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->fl(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z

    .line 60
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v7, v2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {v7, v2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I

    .line 61
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I

    .line 62
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I

    .line 63
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v2, v6}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->CJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I

    .line 65
    const-string v2, "pag_landingPage_stay_time"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string v3, "pag_video_stay_time"

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Tgh(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z

    .line 68
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ROR(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z

    .line 69
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->fl(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I

    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Tgh(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    const-string v1, "pag_video_30p_session"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Sf(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
