.class Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;
.super Ljava/lang/Object;
.source "IPManger.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/bxS$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Qhi"
.end annotation


# static fields
.field private static final Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile cJ:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;->Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 182
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;->cJ:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Qhi()V
    .locals 3

    .line 185
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;->Qhi:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;->cJ:J

    .line 187
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Lcom/bytedance/sdk/component/utils/bxS$Qhi;Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Qhi(Landroid/content/Context;Landroid/content/Intent;ZI)V
    .locals 2

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;->cJ:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 202
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Gm;->cJ()V

    .line 203
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Gm;->cJ(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;->cJ()V

    :cond_1
    return-void
.end method

.method public cJ()V
    .locals 0

    .line 192
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Lcom/bytedance/sdk/component/utils/bxS$Qhi;)V

    return-void
.end method
