.class Lcom/bytedance/sdk/component/cJ$cJ;
.super Ljava/lang/Object;
.source "TTPropHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "cJ"
.end annotation


# instance fields
.field volatile CJ:Z

.field final Qhi:J

.field final ac:Ljava/util/concurrent/CountDownLatch;

.field final cJ:Ljava/util/Properties;

.field fl:Z


# direct methods
.method private constructor <init>(JLjava/util/Properties;)V
    .locals 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ$cJ;->ac:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/cJ$cJ;->CJ:Z

    .line 285
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/cJ$cJ;->fl:Z

    .line 288
    iput-wide p1, p0, Lcom/bytedance/sdk/component/cJ$cJ;->Qhi:J

    .line 289
    iput-object p3, p0, Lcom/bytedance/sdk/component/cJ$cJ;->cJ:Ljava/util/Properties;

    return-void
.end method

.method synthetic constructor <init>(JLjava/util/Properties;Lcom/bytedance/sdk/component/cJ$1;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/cJ$cJ;-><init>(JLjava/util/Properties;)V

    return-void
.end method


# virtual methods
.method Qhi(ZZ)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/cJ$cJ;->fl:Z

    .line 294
    iput-boolean p2, p0, Lcom/bytedance/sdk/component/cJ$cJ;->CJ:Z

    .line 295
    iget-object p1, p0, Lcom/bytedance/sdk/component/cJ$cJ;->ac:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
