.class Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Qhi"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 131
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi$1;

    const-string v1, "reportPvFromBackGround"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Qhi$Qhi;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method
