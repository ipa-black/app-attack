.class Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "IPMiBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/content/Intent;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;->cJ:Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;->Qhi:Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v7, p0

    .line 98
    const-string v8, "IPMiBroadcastReceiver"

    :try_start_0
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;->Qhi:Landroid/content/Intent;

    const-string v1, "errorCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_1

    .line 104
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;->Qhi:Landroid/content/Intent;

    const-string v1, "reason"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x4

    if-ne v3, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    const/4 v0, 0x5

    if-ne v3, v0, :cond_3

    .line 110
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;->Qhi:Landroid/content/Intent;

    const-string v1, "status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 113
    :try_start_1
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;->Qhi:Landroid/content/Intent;

    const-string v4, "progress"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 115
    :catchall_0
    :try_start_2
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;->cJ:Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;I)I

    :goto_1
    const/16 v1, 0x64

    if-ge v2, v1, :cond_2

    return-void

    :cond_2
    move v4, v0

    move v5, v2

    goto :goto_2

    :cond_3
    move v4, v2

    move v5, v4

    .line 122
    :goto_2
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;->Qhi:Landroid/content/Intent;

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;->cJ:Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;)Lcom/bytedance/sdk/openadsdk/oem/Qhi;

    move-result-object v1

    if-lez v3, :cond_4

    if-eqz v1, :cond_4

    .line 125
    invoke-interface {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/oem/Qhi;->Qhi(Ljava/lang/String;I)V

    .line 127
    :cond_4
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;->cJ:Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v11

    .line 128
    const-string v12, "err_code="

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, " reason="

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, " status="

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, " progress="

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v12 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_5

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ip_listener_log"

    new-instance v14, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1$1;

    move-object v1, v14

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver$1;IIII)V

    invoke-static/range {v9 .. v14}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
