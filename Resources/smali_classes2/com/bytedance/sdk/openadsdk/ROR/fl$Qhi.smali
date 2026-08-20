.class final Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;
.super Ljava/lang/Object;
.source "ImageLoaderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ROR/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Qhi"
.end annotation


# static fields
.field private static final Qhi:Lcom/bytedance/sdk/component/fl/hpZ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/component/fl/hpZ;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/hpZ;

    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/component/fl/Gm;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 1

    .line 222
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lB;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;-><init>()V

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/qMt;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Qhi()Lcom/bytedance/sdk/component/fl/hpZ;
    .locals 1

    .line 69
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/hpZ;

    return-object v0
.end method

.method private static Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/component/fl/hpZ;
    .locals 5

    .line 85
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/high16 v1, 0x5000000

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0xa00000

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 88
    new-instance v1, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getImageCacheDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x2800000

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/bytedance/sdk/component/fl/ac/Qhi/Qhi;-><init>(IJLjava/io/File;)V

    .line 89
    new-instance v0, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;-><init>()V

    .line 90
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi$2;-><init>()V

    .line 91
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/EBS;)Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi$1;-><init>()V

    .line 98
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/fl;)Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->Qhi()Lcom/bytedance/sdk/component/fl/ac/Tgh;

    move-result-object v0

    .line 89
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/fl/ac/cJ;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/component/fl/iMK;)Lcom/bytedance/sdk/component/fl/hpZ;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 69
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->cJ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 69
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static cJ(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 2

    .line 206
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/hpZ;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/hpZ;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ac()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/Gm;->cJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/Gm;->fl(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    .line 210
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/Gm;->CJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->ROR()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p0

    .line 212
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/Gm;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p0

    return-object p0
.end method

.method private static cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;
    .locals 1

    .line 199
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/hpZ;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/fl/hpZ;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p0

    .line 200
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/fl/Gm;->fl(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p0

    .line 201
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/fl/Gm;->CJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p0

    .line 202
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/Gm;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p0

    return-object p0
.end method

.method private static cJ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 229
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/hpZ;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/fl/hpZ;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 233
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi:Lcom/bytedance/sdk/component/fl/hpZ;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/fl/hpZ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
