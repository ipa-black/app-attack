.class final Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi$2;
.super Ljava/lang/Object;
.source "ImageLoaderWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/EBS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ROR/fl$Qhi;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/component/fl/hpZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
