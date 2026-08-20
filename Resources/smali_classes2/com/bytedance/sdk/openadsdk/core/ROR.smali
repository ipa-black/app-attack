.class Lcom/bytedance/sdk/openadsdk/core/ROR;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ROR$cJ;,
        Lcom/bytedance/sdk/openadsdk/core/ROR$Qhi;,
        Lcom/bytedance/sdk/openadsdk/core/ROR$ac;
    }
.end annotation


# static fields
.field private static final ac:Ljava/lang/Object;


# instance fields
.field private Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR$ac;

.field private cJ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR;->ac:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR;->cJ:Landroid/content/Context;

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR$ac;

    if-nez p1, :cond_1

    .line 42
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR$ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR;)Landroid/content/Context;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR;->ac()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private ac()Landroid/content/Context;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR;->cJ:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/ROR;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR;->cJ:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic cJ()Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR;->ac:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR$ac;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR$ac;

    return-object v0
.end method
