.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;
.super Ljava/lang/Object;
.source "UGenLoadTemplateListenerImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/Tgh;


# instance fields
.field private CJ:Ljava/lang/String;

.field private Qhi:J

.field private final Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ac:I

.field private cJ:J

.field private fl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->Qhi:J

    .line 19
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->cJ:J

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->ac:I

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->CJ:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->fl:Ljava/lang/String;

    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 2

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->Qhi:J

    return-void
.end method

.method public Qhi(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->ac:I

    .line 32
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->CJ:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->fl:Ljava/lang/String;

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->cJ:J

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 46
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->cJ:J

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->Qhi:J

    sub-long v9, v1, v3

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->fl:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v8, "success"

    const-string v12, "ad"

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v14}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 49
    :cond_0
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->cJ:J

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->Qhi:J

    sub-long v9, v1, v3

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->fl:Ljava/lang/String;

    iget v13, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->ac:I

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->CJ:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "fail"

    const-string v12, "ad"

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v14}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 2

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->fl:Ljava/lang/String;

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->cJ:J

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
