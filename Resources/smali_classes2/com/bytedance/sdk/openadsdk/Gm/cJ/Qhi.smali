.class public Lcom/bytedance/sdk/openadsdk/Gm/cJ/Qhi;
.super Ljava/lang/Object;
.source "ReportThreadLogServiceImp.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Sf/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/Sf/cJ/Qhi;)V
    .locals 2

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/cJ/Qhi$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/cJ/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/Gm/cJ/Qhi;Lcom/bytedance/sdk/component/Sf/cJ/Qhi;)V

    const-string p1, "stats_sdk_thread_num"

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method
