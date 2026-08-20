.class public Lcom/bytedance/sdk/openadsdk/HzH/Qhi;
.super Ljava/lang/Object;
.source "StrategyCenterUtils.java"


# static fields
.field public static final Qhi:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile cJ:Lcom/bytedance/sdk/openadsdk/kYc/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;I)I
    .locals 1

    .line 190
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/kYc/ac;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Qhi(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static Qhi(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    sget-object v1, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 243
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 244
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 247
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/kYc/ac;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, p0, v3}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return p2

    .line 252
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 254
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 257
    const-string p1, "StrategyUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return p2
.end method

.method public static Qhi(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/kYc/ac;
    .locals 2

    .line 49
    sget-object v0, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/bytedance/sdk/openadsdk/HzH/Qhi$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    new-instance p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/kYc/ac;-><init>(Lcom/bytedance/sdk/openadsdk/kYc/fl;)V

    .line 139
    sput-object p0, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/HzH/Qhi$2;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi$2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/kYc/Qhi;)V

    .line 178
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 180
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/ac;

    return-object p0
.end method

.method public static Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 203
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/kYc/ac;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Qhi()V
    .locals 1

    .line 265
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/kYc/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Qhi()V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;Z)Z
    .locals 1

    .line 194
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/kYc/ac;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Qhi(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static cJ()Lcom/bytedance/sdk/openadsdk/kYc/ac;
    .locals 2

    .line 185
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/kYc/ac;

    move-result-object v0

    return-object v0
.end method
